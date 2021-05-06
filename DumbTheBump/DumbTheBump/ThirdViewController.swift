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
    
    var vc : ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let weightInfo = Weight(unit: unitTextField.text, month: monthTextField.text, day: dayTextField.text, year: yearTextField.text, weight: weightTextField.text)
        let weightArray = weightCollection()
        weightArray.add(weightInfo)
        save(array: weightArray)
        weightInfo.weight = textfield.text
        vc.updateWeight(WeightInfo)    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
