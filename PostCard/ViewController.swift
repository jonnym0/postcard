//
//  ViewController.swift
//  PostCard
//
//  Created by Jonnymo on 06/10/2014.
//  Copyright (c) 2014 Jonnymo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enternameTextField: UITextField!
    @IBOutlet weak var entermessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabelName: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Adding a comment to test Git Commits
        messageLabel.hidden = false
        messageLabel.text = entermessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        messageLabelName.hidden = false
        messageLabelName.text = enternameTextField.text
        messageLabelName.textColor = UIColor.blueColor()
        
        entermessageTextField.text = ""
        enternameTextField.text = ""
        entermessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

