//
//  ViewController.swift
//  TableView
//
//  Created by Kalyan on 02/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    var usersList:[User] = [
        User(name: "Kalyan", age: 20, gender: "Male"),
        User(name: "Sravan", age: 24, gender: "Male"),
        User(name: "Nikilesh", age: 26, gender: "Male"),
        User(name: "Phani", age: 25, gender: "Male")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "reusableCell")
    }


}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath) as? UserCell else{return UITableViewCell()}
        cell.nameLabel.text = "Name : \(usersList[indexPath.row].name)"
        cell.ageLabel.text = "Age : \(usersList[indexPath.row].age)"
        cell.genderLabel.text = "Gender : \(usersList[indexPath.row].gender)"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // 1
        let headerView = UIView()
        // 2
        headerView.backgroundColor = view.backgroundColor
        // 3
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
}
