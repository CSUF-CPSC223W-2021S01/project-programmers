//
//  SecondViewController.swift
//  DumbTheBump
//
//  Created by Ventayen, Harrold and Linares, Mario on 5/6/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // VC1
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc3 : ThirdViewController = segue.destination as? ThirdViewController {
            vc3.vc2 = self;
            
        }
    }
    // code for vc1
    func updateWeight(weightInfo: Weight) {
        print(weightInfo.weight)
    }
}
