//
//  User.swift
//  InstagramLoginPage
//
//  Created by Macservis on 09/04/22.
//

import Foundation

class User {
    var fullName: String? = ""
    var email: String? = ""
    var phone: String? = ""
    var userName: String? = ""
    var password: String? = ""
    
    
    
    init(fullName: String?, email: String?, phone: String?,userName: String, password: String?) {
        self.fullName = fullName
        self.email = email
        self.phone = phone
        self.userName = userName
        self.password = password
    }
}
