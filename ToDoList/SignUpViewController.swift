//
//  SignUpViewController.swift
//  ToDoList
//
//  Created by Murat  on 5.02.2017.
//  Copyright © 2017 Murat . All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    //MARK: IBOutlets
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var pas: UITextField!
    @IBOutlet weak var pasAgain: UITextField!
    
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var switchh: UISwitch!
    
    
    
    var user: User?
    
    //MARK: IBAction
    
    @IBAction func signUpBootomTaped(_ sender: UIButton) {
        
        let mail = email.text
        let pass = pas.text
        let repass = pasAgain.text
        
        
        if mail == "" || pass == "" || repass == "" {
        
            
            warningLabel.text = "Please Fill"
            warningLabel.isHidden = false
            
        }else if pass != repass {
        
            warningLabel.isHidden = false
            warningLabel.text = "Not equak your passwords"
        
        }else if switchh.isOn == false {
        
            warningLabel.text = "please Agree the User Contract.."
        
            warningLabel.isHidden = false
        }
        else{
            // eger boş degilse içeri sokuyor boş ise atlıyor
           
            if let mail = mail  {
                   if let pass = pass {
                    user = User(mail: mail, password: pass)
                    print(mail)
                    print(pass)
                    warningLabel.textColor = UIColor.green
                    warningLabel.text = "Succes"
                }
            }
            
        }
        
        
    }
    
    @IBAction func cancelTag(_ sender: UIBarButtonItem) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //başlangıçta visible olarak geliyor
        warningLabel.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
