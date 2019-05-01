//
//  SecondViewController.swift
//  Delegat and protocol
//
//  Created by om technology on 01/05/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import UIKit
protocol DataPass
 {
   func DataPassing(fName:String,lName:String,email:String,password:String)
  
 }
class SecondViewController: UIViewController {

    @IBOutlet var txtFname: UITextField!
    @IBOutlet var txtLname: UITextField!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    
    var delegate: DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()
     
       
    }

    @IBAction func btnSave(_ sender: UIButton)
    {
        if txtFname.text == "" {
            Alert(title: "Enter FristName", massage: "", delegate: self)
        }else if txtLname.text == ""
        {
            Alert(title: "Enter LastName", massage: "", delegate: self)
        }else if txtEmail.text == ""
        {
            Alert(title: "Enter Email", massage: "", delegate: self)
        }else if txtPassword.text == ""
        {
            Alert(title: "Enter Password", massage: "", delegate: self)
        }else
        {
              delegate.DataPassing(fName: txtFname.text!, lName: txtLname.text!, email: txtEmail.text!, password: txtPassword.text!)
        }
        
       
    }
    func Alert(title:String,massage:String,delegate:AnyObject) {
        
        let alert = UIAlertView()
        alert.title = title
        alert.message = massage
        alert.addButton(withTitle: "ok")
        alert.delegate = delegate
        alert.show()
        
    }
}
