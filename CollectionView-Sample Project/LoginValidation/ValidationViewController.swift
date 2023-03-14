//
//  ValidationViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 14/03/23.
//

import UIKit

class ValidationViewController: UIViewController {
    var email = ""
    var password = ""
    @IBOutlet var emailLabel:UILabel!
    @IBOutlet var passwordLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = email
        passwordLabel.text = password

}
    @IBAction func backButtonTapped(){
        self.dismiss(animated: true)
        
    }

    }
