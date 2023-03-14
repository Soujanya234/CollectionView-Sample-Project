//
//  LoginViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 14/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var emailTF:UITextField!
    @IBOutlet var passwordTF:UITextField!
    var str = "admin"
    var pass = "admin"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftView = UIView()
        leftView.frame = CGRect(x: 2, y: 0, width: 50, height: emailTF.frame.size.height)
        emailTF.addSubview(leftView)
        let leftImageView = UIImageView()
        leftImageView.frame = leftView.frame
        leftImageView.image = UIImage(systemName: "person")
        leftView.addSubview(leftImageView)
     
        
        let leftView1 = UIView()
        leftView1.frame = CGRect(x: 2, y: 0, width: 50, height: passwordTF.frame.size.height)
       passwordTF.addSubview(leftView1)
        let leftImageView1 = UIImageView()
        leftImageView1.frame = leftView1.frame
        leftImageView1.image = UIImage(systemName: "lock")
        leftView1.addSubview(leftImageView1)
       
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue" {
            if let vc = segue.destination as? ValidationViewController{
                vc.email = emailTF.text!
                vc.password = passwordTF.text!
                
            }
            
        }
    }
    @IBAction func loginButtonTapped(){
        if str.contains(emailTF!.text!) && pass.contains(passwordTF!.text!){
            performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
}
    

    
    
    


