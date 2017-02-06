//
//  User.swift
//  ToDoList
//
//  Created by Murat  on 5.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import Foundation
import UIKit

class User {
    
    var mailAdress: String
    var password: String
    var tasks:[Task]?
    
    // ? nillde olabilir 
    // ! null olamaz
    
    init(mail:String, password: String ) {
        self.mailAdress = mail
        self.password = password
        
    }
    

}
