//
//  SecondViewController.swift
//  DumbTheBump
//
//  Created by Ventayen, Harrold on 5/6/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
