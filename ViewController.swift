//
//  ViewController.swift
//  ansbido
//
//  Created by chenLinfeng on 2019/12/8.
//  Copyright © 2019 chenLinfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: properties
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var Label: UILabel!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
        // Do any additional setup after loading the view.
    }

    // MARK: UItestdelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textfield.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        Label.text = textfield.text
    }
    
    // MARK: Action
    @IBAction func addmemo(_ sender: UIButton) {
        Label.text = "default"
    }
}

