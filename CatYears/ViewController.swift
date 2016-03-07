//
//  ViewController.swift
//  CatYears
//
//  Created by Besjana Shabani.
//  Copyright © 2015 Besjana Shabani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var age: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var testField: UITextField!
    
    @IBAction func findAge(sender: AnyObject) {
        
        let enteredAge = Int(age.text!)
        
        if enteredAge != nil {
        
            let catYears = enteredAge! * 7
        
            resultLabel.text = "Your cat is \(catYears) years old in cat years"
        }else {
        
            resultLabel.text = "Please enter a number"
        
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
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        
        view.endEditing(true)
        
        super.touchesBegan(touches, withEvent: event)
        
    }

}

