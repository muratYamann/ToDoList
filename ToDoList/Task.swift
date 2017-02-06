//
//  Task.swift
//  ToDoList
//
//  Created by Murat  on 5.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import Foundation
import UIKit

class Task {
    
    var title: String
    var description: String
    var index: Int
    
    init(title:String, description:String, index:Int) {
        self.title = title
        self.description = description
        self.index = 0
    }
    
    
    
}
