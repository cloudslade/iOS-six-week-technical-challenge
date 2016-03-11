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
    
    // We will need to modify all of our crud functions once we implement persistent storage.
    
    func createUser(userName: String) {
        let user = User(userName: userName)
        UserController.sharedUserController.users.append(user)
    }
    
    func deleteUser(user: User) {
        for (index,element) in UserController.sharedUserController.users.enumerate() {
            if element == user {
                UserController.sharedUserController.users.removeAtIndex(index)
            }
        }
    }
    
    func updateUser(userName: String, user: User) {
        for element in UserController.sharedUserController.users {
            if element == user {
                element.userName = userName
            }
        }
    }
    
    func assignTeams(users: [User]) {
        var teamCounter = 0
        for (index, user) in users.enumerate() {
            if index % 2 == 0 {
                teamCounter++
                user.team = teamCounter
            } else {
                user.team = teamCounter
            }
        }
    }
    
}

// an extension from stack overflow for randomizing a Mutable Collection Type
extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}







