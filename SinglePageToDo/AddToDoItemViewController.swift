//
//  AddToDoItemViewController.swift
//  SinglePageToDo
//
//  Created by Austen Talbot on 1/31/15.
//  Copyright (c) 2015 Austen Talbot. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
    var toDoItem: ToDoItem?

    @IBOutlet weak var saveButton: UIBarButtonItem!

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if sender as? NSObject != self.saveButton{
            return
        }
        if self.textField.text.utf16Count > 0{
            self.toDoItem = ToDoItem(name: self.textField.text)
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    

}
