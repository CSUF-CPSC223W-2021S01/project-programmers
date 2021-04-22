//
//  ViewController.swift
//  DumbTheBump
//
//  Created by Mario on 3/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    let weightInfo = Weight(unit: unitTextField.text, month: monthTextField.text, day: dayTextField.text, year: yearTextField.text, weight: weightTextField.text)
    /*
    struct weightCollection {
        var weights: [Weight]
        func add (weight: Weight) {
            
        }
    }
     */
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        save(newWeight: weightInfo)
        
    }


}

