//
//  CreateUserViewController.swift
//  Six Week Challenge
//
//  Created by Dylan Slade on 3/11/16.
//  Copyright © 2016 Dylan Slade. All rights reserved.
//

import UIKit

class CreateUserController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    
    @IBAction func createUserButtonTapped(sender: UIButton) {
        if let userName = userNameTextField.text {
            let user = User(userName: userName)
            UserController.sharedUserController.users.append(user)
        }
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
