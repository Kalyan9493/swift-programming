//
//  ViewController.swift
//  NewRegisterApp
//
//  Created by Kalyan on 06/03/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var emailid: UITextField!
    @IBOutlet weak var mobilenumber: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var conformpassword: UITextField!
    @IBOutlet weak var dateofbirth: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstname.delegate = self
        self.lastname.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == firstname {
            lastname.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
        }
        return true
    }
}
