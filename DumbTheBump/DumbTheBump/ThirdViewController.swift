//
//  ThirdViewController.swift
//  DumbTheBump
//
//  Created by Ventayen, Harrold on 5/6/21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    let tracker = Tracker()
    
    var vc2 : SecondViewController?
    //var name: String
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let File = readWeight()
        for weights in File?.tracker ?? []{
            tracker.addWeight(weight: weights)
        }
    }
    
    @IBAction func onButtonTapDone(_ sender: Any) {
        save(array: tracker)
        
    }
    @IBAction func onButtonTap(_ sender: Any) {
        if let weightInfo = Weight(unit: unitTextField.text!, month: monthTextField.text!, day: dayTextField.text!, year: yearTextField.text!, weight: weightTextField.text!) {
            weightInfo.unit = unitTextField.text!
            weightInfo.month = monthTextField.text!
            weightInfo.day = dayTextField.text!
            weightInfo.year = yearTextField.text!
            weightInfo.weight = weightTextField.text!
            vc2?.updateWeight(weightInfo: weightInfo)
            tracker.addWeight(weight: weightInfo)
            unitTextField.text = ""
            monthTextField.text = ""
            dayTextField.text = ""
            yearTextField.text = ""
            weightTextField.text = ""
        }
        
    }
}
