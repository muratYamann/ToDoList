//
//  TasksViewController.swift
//  ToDoList
//
//  Created by Murat  on 5.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    
    //Mark  IBOutlets Description tableview
    @IBOutlet weak var tableViewTasks: UITableView!
    
    
    //MARK: Description Variable
    var tasksList = [String]()
    var task = ""
    var getUserDataTasks = [String]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let taskSave1 = UserDefaults.standard.object( forKey:"tasks" ) as? [String] {
            print("WiewdidAppaer ")
            getUserDataTasks = taskSave1
        }
        
    }

    
    //MARK: TableView Metods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("tableview 1: numberOfRowsInSection \(getUserDataTasks.count)")
        return getUserDataTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      // for acces tableView Cell Description cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        // for attach on cell label . first getDataTasks at index data
        var data = getUserDataTasks[indexPath.row]
        //for parse data Send Funtions
        let date =  parseData(value: data )
        let task = remove(dateRemove: data )
        
        //Change Cell Text Color
        cell?.textLabel?.textColor = UIColor.black
        cell?.detailTextLabel?.textColor = UIColor.red
        
        
        // return functions data and set the cell texts
        cell?.textLabel!.text = task
        cell?.detailTextLabel!.text = "End Time \(date)"
      
        return cell!
    }
    
    // give a Clicked position and session
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
    }
    
    //MARK: get data in the local storage  . and  attach  the 'getUserDataTasks' array .
    override func viewDidAppear(_ animated: Bool) {
        if let taskSave1 = UserDefaults.standard.object( forKey:"tasks" ) as? [String] {
            getUserDataTasks = taskSave1
         }
     }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    
    //Mark 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            
            getUserDataTasks.remove(at: indexPath.row)
            tableViewTasks.reloadData()
            UserDefaults.standard.set(getUserDataTasks, forKey: "tasks")
            
        }
    }
    
    
    
    
    
    func parseData(value: String) -> String {
        // Find index of space.
        let c = value.characters
        if let space = c.index(of: "-") {
            return value[c.index(after: space)..<value.endIndex]
        }
        return ""
    }
    
    func remove(dateRemove: String) -> String {
        
        let reserverd = String(dateRemove.characters.reversed())
        
        let c = dateRemove.characters
        if let space = c.index(of: "-") {
            var removed = reserverd[c.index(after: space)..<reserverd.endIndex]
            return String(removed.characters.reversed())
        }

        return ""
    }
    
    
    
    
    
    
    }





