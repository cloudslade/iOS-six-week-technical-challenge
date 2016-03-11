//
//  User.swift
//  Six Week Challenge
//
//  Created by Dylan Slade on 3/11/16.
//  Copyright © 2016 Dylan Slade. All rights reserved.
//

import Foundation

class User {
    var userName: String
    var partner: User?
    var team: Int?
    
    init(userName: String, partner: User? = nil, team: Int? = nil) {
        self.userName = userName
        self.partner = partner
        self.team = team
    }
}

func ==(lhs: User, rhs: User) -> Bool {
    return lhs.userName == rhs.userName
}