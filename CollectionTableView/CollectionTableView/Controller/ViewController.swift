//
//  ViewController.swift
//  CollectionTableView
//
//  Created by Kalyan on 03/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let usersList = [
        User(name: "Kalyan", age: 23, gender: "Male"),
        User(name: "Phani", age: 26, gender: "Male"),
        User(name: "Nikilesh", age: 27, gender: "Male"),
        User(name: "Sravan", age: 26, gender: "Male"),
        User(name: "Kalyan Kumar Reddy", age: 23, gender: "Male"),
        User(name: "Phani", age: 26, gender: "Male"),
        User(name: "Nikilesh", age: 27, gender: "Male"),
        User(name: "Sravan", age: 26, gender: "Male"),
        User(name: "Kalyan", age: 23, gender: "Male"),
        User(name: "Phani", age: 26, gender: "Male"),
        User(name: "Nikilesh", age: 27, gender: "Male"),
        User(name: "Sravan", age: 26, gender: "Male"),
        User(name: "Kalyan", age: 23, gender: "Male"),
        User(name: "Phani", age: 26, gender: "Male"),
        User(name: "Nikilesh", age: 27, gender: "Male"),
        User(name: "Sravan", age: 26, gender: "Male"),
        User(name: "Kalyan", age: 23, gender: "Male"),
        User(name: "Phani", age: 26, gender: "Male"),
        User(name: "Nikilesh", age: 27, gender: "Male"),
        User(name: "Sravan", age: 26, gender: "Male")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 120)
        collectionView.collectionViewLayout = layout
        collectionView.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "reusableCollectionViewCell")
        
    }


}


extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return usersList.count
    }
}

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reusableCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        
        cell.nameLabel.text = "Name : \(usersList[indexPath.row].name)"
        cell.ageLabel.text = "Age : \(usersList[indexPath.row].age)"
        cell.genderLabel.text = "Gender : \(usersList[indexPath.row].gender)"
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height
        let width = collectionView.frame.width
        return CGSize(width: width * 0.9, height: height * 0.1)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
}
