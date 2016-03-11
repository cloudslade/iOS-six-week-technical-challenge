//
//  UserController.swift
//  Six Week Challenge
//
//  Created by Dylan Slade on 3/11/16.
//  Copyright © 2016 Dylan Slade. All rights reserved.
//

import Foundation

class UserController {
    static let sharedUserController = UserController()
    var users: [User] = [
        User(userName: "John"),
        User(userName: "yola"),
        User(userName: "JohnnyBoy"),
        User(userName: "Mohanna"),
        User(userName: "Bradley Slade"),
        User(userName: "Carolyn Slade"),
        User(userName: "Dylan Slade"),
        User(userName: "Tiana Slade"),
        User(userName: "Ella Slade"),
        User(userName: "Derek Slade")
    ]
    
    func createUser(userName: String) {
        let user = User(userName: userName)
        UserController.sharedUserController.users.append(user)
        
        // save to persistent storage
    }
    
    func deleteUser(user: User) {
        for (index,element) in UserController.sharedUserController.users.enumerate() {
            if element == user {
                UserController.sharedUserController.users.removeAtIndex(index)
            }
        }
    }
    
    func updateUser(userName: String, user: User) {
        user.userName = userName
        
        // Check if there is anyhting else you can update.
    }
    
}