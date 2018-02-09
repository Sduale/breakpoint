//
//  AuthVC.swift
//  breakpoint
//
//  Created by nopcallowed on 2/9/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signInWithEmailButtonWasPressed(_ sender: Any) {
        let loginVc = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVc!, animated: true, completion: nil)
    }
    @IBAction func googleSingInBtnWasPrssd(_ sender: Any) {
    }
    @IBAction func FaceboodSignInBtnWasPrssd(_ sender: Any) {
    }
    
}
