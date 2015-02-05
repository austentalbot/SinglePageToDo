//
//  ToDoItem.swift
//  SinglePageToDo
//
//  Created by Austen Talbot on 2/1/15.
//  Copyright (c) 2015 Austen Talbot. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:String){
        self.itemName = name
    }
}
