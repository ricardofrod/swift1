//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ricardo Rodrigues on 10/02/17.
//  Copyright © 2017 Ricardo Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //MARK: Properties

    
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   //MARK: UITextFieldDelegate
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameTextField.text = textField.text
    }
    
 //MARK: Actions

    @IBAction func setDefaultLabelText(_ sender: UIButton){
        nameTextField.text="Escreva aqui..."
    }

    
}

