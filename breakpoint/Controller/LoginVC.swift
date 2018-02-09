//
//  LoginVC.swift
//  breakpoint
//
//  Created by nopcallowed on 2/9/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self

    }

    @IBAction func signInBtnWasPrssd(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            // FIRST TRY TO LOGIN A USER
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                // IF LOGIN FAILS, THEN WE REGISER THE USER...
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        // THEN LOGIN THE NEWLY REGISTERD USER.
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfully registered user")
                        })
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
            })
        }
    }
    @IBAction func closeBtnWasPrssd(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}

extension LoginVC: UITextFieldDelegate {}

