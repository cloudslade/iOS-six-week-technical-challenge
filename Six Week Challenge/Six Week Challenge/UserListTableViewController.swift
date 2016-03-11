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
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("userCell", forIndexPath: indexPath)
        let user = UserController.sharedUserController.users[indexPath.row]
        cell.textLabel?.text = user.userName
        if let team = user.team {
            cell.detailTextLabel?.text = "Team: \(team)"
        } else {
            cell.detailTextLabel?.text = "Unassigned"
        }
        return cell
    }
    
    
    @IBAction func randomize(sender: UIBarButtonItem) {
        
    }
}