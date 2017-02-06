
//
//  ForgotPassViewController.swift
//  ToDoList
//
//  Created by Murat  on 6.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import UIKit

class ForgotPassViewController: UIViewController {

    var userMail = " "
    let oldMail = "murat"
    //MARK: IBOutlets
    @IBOutlet var mailText: UITextField!
    @IBOutlet var yourNewMailLabel: UILabel!
    
    //MARK: IBAction
    @IBAction func getNewPassButtonTapped(_ sender: UIButton) {
    
        userMail = mailText.text!
        var controlResponse = mailConrol(userMail: userMail)
        
        //Conrol response  a boolen value
        if controlResponse {
            
            //if response true , user mail equals mail
            var newPass = createNewPass()
            yourNewMailLabel.text = newPass
            
        }
        
    
    }
    
    //26 characters
    var alphabetForNewPas = ["a","b", "c",	"d",  "e", "f",	"g","h", "i", "j", "k", "l", "m","n","o","p","q","r","s","t","u","v","w","x","y","z" ]
    //MARK: Declare createNewPass
    func createNewPass() -> String {
        
        var newpass = ""
        
        for index in 0..<8{
        
            let randomNumber = Int(arc4random_uniform(26))
            newpass += alphabetForNewPas[randomNumber]
            
        }
        
        return newpass
    }
    
    
    //User Mail Control
    func mailConrol(userMail mail:String ) -> Bool {
        
        if userMail == "" {
            yourNewMailLabel.textColor = UIColor.red
            yourNewMailLabel.text = "Please Enter Your Old Mail..."
            return false
        } else if  oldMail != userMail {
            yourNewMailLabel.textColor = UIColor.red
            yourNewMailLabel.text = "Your Old Mail Not Correct..."
            return false
        }else if userMail == oldMail {
            return true
        }
        
        return false
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
