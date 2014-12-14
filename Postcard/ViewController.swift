//
//  ViewController.swift
//  PostCard
//
//  Created by Ujjwal Verma on 11/16/14.
//  Copyright (c) 2014 iCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMessage: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMailClicked(sender: UIButton) {
        // --If any of the name textbox or message textbox is filled
        if((txtMessage.text != "") || (txtName.text != "")) {
            lblMessage.hidden = false;
            lblMessage.text = "Name: " + txtName.text + "\nMessage: " + txtMessage.text;
            lblMessage.textColor = UIColor.brownColor();
            
            txtName.text = "";
            txtMessage.text = "";
        }else {
            lblMessage.hidden = true;
        }
    }

}

