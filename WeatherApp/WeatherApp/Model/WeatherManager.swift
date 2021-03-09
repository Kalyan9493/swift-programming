//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Kalyan on 27/02/21.
//

import Foundation

protocol WeatherManagerDelegate{
    func didUpdateWeather(weather:WeatherModel)
}

struct WeatherManager{
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?APPID=b10c5c9c7fe5bfecd9bda14fc1b40b5a&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName:String){
        let url = "\(weatherURL)&q=\(cityName)"
        print(url)
        performRequest(urlString: url)
    }
    
    func performRequest(urlString:String){
        if let strUrl = URL(string: urlString){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: strUrl) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    if let weather = self.parseJSON(weatherData: safeData){
                        self.delegate?.didUpdateWeather(weather: weather)
                    }
                }
                
            }
            task.resume()
        }
    }
    
    func parseJSON(weatherData:Data) -> WeatherModel?{
        let decoder = JSONDecoder()
        do{
            let weatherDecodedData = try decoder.decode(WeatherData.self, from: weatherData)
            
            let id = weatherDecodedData.weather[0].id
            let name = weatherDecodedData.name
            let temp = weatherDecodedData.main.temp
            
            let weather = WeatherModel(conditionId: id, cityName: name, temparature: temp)
            
           return weather
            
        }catch{
            print(error)
            return nil
        }
        
    }
}
