//
//  User.swift
//  Six Week Challenge
//
//  Created by Dylan Slade on 3/11/16.
//  Copyright © 2016 Dylan Slade. All rights reserved.
//

import Foundation

class User {
    private let userNameKey = "userName"
    private let partnerKey = "partner"
    private let teamKey = "team"
    
    var userName: String
    var partnerUserName: String? = ""
    var team: Int?
    
    init(userName: String, partnerUserName: String? = nil, team: Int? = nil) {
        self.userName = userName
        self.partnerUserName = partnerUserName ?? ""
        self.team = team
    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let userName = dictionary[userNameKey] as? String,
        partnerUserName = dictionary[partnerKey] as? String?,
            team = dictionary[teamKey] as? Int? else {
                self.userName = ""
                self.partnerUserName = ""
                self.team = 0
                return nil
        }
        self.userName = userName
        self.partnerUserName = partnerUserName
        self.team = team
    }
    
    func dictionaryCopy() -> [String: AnyObject] {
        let dictionary = [userNameKey : self.userName, partnerKey: partnerUserName!, teamKey: String(self.team)]
        return dictionary
    }
    
}

func ==(lhs: User, rhs: User) -> Bool {
    return lhs.userName == rhs.userName
}