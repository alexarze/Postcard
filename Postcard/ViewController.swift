//
//  ViewController.swift
//  Postcard
//
//  Created by Alex on 12/16/14.
//  Copyright (c) 2014 Alex Arze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var showAlertSwitch: UISwitch!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        sendMessageButton.setTitle("Sent!", forState: UIControlState.Normal)
        
        if showAlertSwitch.on == true{
            let alert = UIAlertController(title: "Hello World!", message: "You've sent a message!", preferredStyle: UIAlertControllerStyle.Alert)
        
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
}

