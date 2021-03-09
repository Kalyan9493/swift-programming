//
//  ViewController.swift
//  WeatherApp
//
//  Created by Kalyan on 25/02/21.
//

import UIKit

class WeatherViewController: UIViewController,UITextFieldDelegate,WeatherManagerDelegate{

    @IBOutlet weak var weatherNumber: UILabel!
    @IBOutlet weak var weatherCity: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var conditionalImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        weatherManager.delegate = self
    }
    var weatherManager = WeatherManager()
    @IBAction func searchButtonPressed(_ sender: Any) {
        print(textField.text!)
        textField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ text: UITextField) -> Bool {
        print(textField.text!)
        if let city = textField.text{
            weatherManager.fetchWeather(cityName: city)
        }
        textField.endEditing(true)
        return true
        
    }
    
    func textFieldDidEndEditing(_ text: UITextField) {
        textField.text = ""
    }
    
    func textFieldShouldEndEditing(_ text: UITextField) -> Bool {
        if(text.text != ""){
            return true
        }else{
            text.placeholder = "Please Enter City"
            return false
        }
    }
    
    func didUpdateWeather(weather: WeatherModel){
        print(weather.temparature)
        print(weather.conditionName)
        DispatchQueue.main.async {
            self.weatherNumber.text = weather.temperatureString
            self.weatherCity.text = weather.cityName
            self.conditionalImageView.image = UIImage(systemName: weather.conditionName)
        }
    }
    
}

