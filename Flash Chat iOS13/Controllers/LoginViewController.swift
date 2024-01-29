//
// FileName: LoginViewController.swift
// ProjectName: Clima
//
// Created by MD ABIR HOSSAIN on 27-12-2023 at 12:25 AM
// Website: https://mdabirhossain.com/
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    self?.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                    guard let strongSelf = self else { return }
                }
            }
        }
    }
    
}
