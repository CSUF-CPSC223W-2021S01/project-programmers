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
    
    var vc2 : SecondViewController?
    //var name: String
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let weightInfo = Weight(unit: unitTextField.text!, month: monthTextField.text!, day: dayTextField.text!, year: yearTextField.text!, weight: weightTextField.text!) {
            weightInfo.unit = unitTextField.text!
            weightInfo.month = monthTextField.text!
            weightInfo.day = dayTextField.text!
            weightInfo.year = yearTextField.text!
            weightInfo.weight = weightTextField.text!
            vc2?.updateWeight(weightInfo: weightInfo)
            let tracker = Tracker()
            tracker.addWeight(weight: weightInfo)
            save(array: tracker)
        }
        /*
        weightInfo.unit = unitTextField.text
        weightInfo.month = monthTextField.text
        weightInfo.day = dayTextField.text
        weightInfo.year = yearTextField.text
        weightInfo.weight = weightTextField.text
        vc2.updateWeight(weightInfo)
         */
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
