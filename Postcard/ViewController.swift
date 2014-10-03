//
//  ViewController.swift
//  Postcard
//
//  Created by Jason Sutherland on 10/3/14.
//  Copyright (c) 2014 Jason Sutherland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {

        messageLabel.hidden = false
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.setTitle("Sending", forState: UIControlState.Highlighted)
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()

    }

}

