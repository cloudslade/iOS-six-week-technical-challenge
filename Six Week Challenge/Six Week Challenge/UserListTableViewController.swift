//
//  UserListTableViewController.swift
//  Six Week Challenge
//
//  Created by Dylan Slade on 3/11/16.
//  Copyright © 2016 Dylan Slade. All rights reserved.
//

import UIKit

class UserListTableViewController: UITableViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserController.sharedUserController.users.count
    }
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        <#code#>
//    }
}