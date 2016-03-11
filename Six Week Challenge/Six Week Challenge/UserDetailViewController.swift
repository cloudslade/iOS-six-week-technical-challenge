//
//  UserDetailViewController.swift
//  Six Week Challenge
//
//  Created by Dylan Slade on 3/11/16.
//  Copyright © 2016 Dylan Slade. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    var user: User?
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var teamNameLabel: UILabel!
    @IBOutlet var partnerUserNameLabel: UILabel!
    
    override func viewDidLoad() {
        updateWithUser()
    }
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
//        if let newUserName = userNameTextField.text {
//            //            UserController.sharedUserController.updateUser(newUserName, user: <#T##User#>)
//        }
    }
    
    @IBAction func deleteUser(sender: UIButton) {
        
    }
    
    func updateWithUser() {
        if let user = self.user {
            userNameTextField.text = user.userName
            if let team = user.team {
                teamNameLabel.text = String(team)
            } else {
                teamNameLabel.text = "Unassigned"
            }
            if let partner = user.partner {
                partnerUserNameLabel.text = partner.userName
            } else {
                partnerUserNameLabel.text = "No partner"
            }
        }
    }
    
}