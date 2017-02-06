//
//  ViewController.swift
//  ToDoList
//
//  Created by Murat  on 5.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IBOUTLETS
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var mailTextField: UITextField!
    
    @IBOutlet weak var passText: UITextField!
    
    
    
    
    //MARK: IBAction
    @IBAction func sign(_ sender: UIButton){
    
        if mailTextField.text == "" {
            statusLabel.textColor = UIColor.red
            statusLabel.text =  " Please Enter Your Mail "
        } else if passText.text == "" {
            statusLabel.textColor = UIColor.red
            statusLabel.text =  " Please Enter Your Pass "
        }else if mailTextField.text != "murat" && passText.text != "123" {
            statusLabel.textColor = UIColor.red
            statusLabel.text =  "Error . Not True "
        }else if mailTextField.text == "murat" && passText.text == "123" {
        
            let storyBoard : UIStoryboard = UIStoryboard(name: "ViewController", bundle:nil)
            let destination = storyBoard.instantiateViewController(withIdentifier: "TasksViewController")
            self.present(destination, animated: true, completion: nil)
            
        }
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

