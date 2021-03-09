//
//  ViewController.swift
//  SPA API
//
//  Created by Kalyan on 17/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fetchUserButton: UIButton!
    var api = APIManager()
    @IBAction func fetchUserButtonClicked(_ sender: Any) {
        api.handleFetchUser()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

