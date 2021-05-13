//
//  FourthViewController.swift
//  DumbTheBump
//
//  Created by CSUFTitan on 5/12/21.
//

import UIKit

class FourthViewController: UIViewController{
    @IBOutlet var TextView: UITextView!
    
    override func viewDidLoad() {
        let weight = readWeight()
        TextView.text = weight?.returnHistory()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
