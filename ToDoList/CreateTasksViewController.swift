//
//  CreateTasksViewController.swift
//  ToDoList
//
//  Created by Murat  on 5.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import UIKit

class CreateTasksViewController: UIViewController {
    
    var tasklist = [String]()
    
    
    //MARK: Description IBOutlets
    
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var dateTextField: UITextField!

    //MARK: Data Picker
    let dataPicker = UIDatePicker()
    @IBOutlet var dataPickerss: UIDatePicker!
    
    
    
    //MARK: Description IBAction
    @IBAction func btnSavedtapped(_ sender: UIButton) {
      
        let newTask =  taskText.text
        let newDeadline = dateTextField.text
        
        let task = newTask! + "-" + newDeadline!
        
        tasklist.append(task)
        UserDefaults.standard.set(tasklist, forKey:"tasks" )
        print("saved \(taskText.text)")
    
        
    }
    @IBAction func pickerValueChanged(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM YYYY"
        dateTextField.text = formatter.string(from: dataPickerss.date)
        
    }
    
    
    //MARK:  get data from Local  and  assignment new Array for new data append  last 'tasklist' Array
    override func viewDidAppear(_ animated: Bool) {
        
        if let taskSave1 = UserDefaults.standard.object( forKey:"tasks" ) as? [String] {
            tasklist = taskSave1
            print("viewDiedAppear: \(tasklist.count)")
           }
        
    }
    
    
    //MARK: crete dataPicker
    
   
    
   

}
