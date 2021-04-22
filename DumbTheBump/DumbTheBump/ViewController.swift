//
//  ViewController.swift
//  DumbTheBump
//
//  Created by Mario on 3/11/21.
//

import UIKit

class ViewController: UIViewController {
    // vc2
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    var vc : ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let weightInfo = Weight(unit: unitTextField.text, month: monthTextField.text, day: dayTextField.text, year: yearTextField.text, weight: weightTextField.text)
        let weightArray = weightCollection()
        weightArray.add(weightInfo)
        save(array: weightArray)
        weightInfo.weight = textfield.text
        vc.updateWeight(WeightInfo)
    }
    
    // VC1
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc2 = segue.destination as? viewController2 {
            vc2.vc = self;
            //updateWeight(weightInfo)
        }
    }
    // code for vc1
    func updateWeight(weightInfo: Weight) {
        print(weightInfo.weight)
       // weightInfo.unit = unitTextField.text
    }
}

