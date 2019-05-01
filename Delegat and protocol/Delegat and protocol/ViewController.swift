//
//  ViewController.swift
//  Delegat and protocol
//
//  Created by om technology on 01/05/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,DataPass{
   
    

    @IBOutlet var lblFname: UILabel!
    @IBOutlet var lblLname: UILabel!
    @IBOutlet var lblEmail: UILabel!
    @IBOutlet var lblPassword: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func GoToFormpage(_ sender: Any)
    {
      let secondVc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVc.delegate=self
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
   func DataPassing(fName: String, lName: String, email: String, password: String) {
        lblFname.text = fName
        lblLname.text = lName
        lblEmail.text = email
        lblPassword.text = password
    }


}

