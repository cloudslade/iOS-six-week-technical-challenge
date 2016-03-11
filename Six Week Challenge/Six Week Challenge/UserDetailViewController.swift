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
        if let newUserName = userNameTextField.text {
            UserController.sharedUserController.updateUser(newUserName, user: user!)
        }
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func deleteUser(sender: UIButton) {
        UserController.sharedUserController.deleteUser(user!)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func updateWithUser() {
        if let user = self.user {
            userNameTextField.text = user.userName
            if let team = user.team {
                teamNameLabel.text = String(team)
            } else {
                teamNameLabel.text = "Unassigned"
            }
            if let partnerUserName = user.partnerUserName {
                partnerUserNameLabel.text = partnerUserName
            } else {
                partnerUserNameLabel.text = "No partner"
            }
        }
    }
    
}