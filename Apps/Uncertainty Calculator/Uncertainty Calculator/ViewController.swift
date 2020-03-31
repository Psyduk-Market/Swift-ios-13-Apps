//
//  ViewController.swift
//  Uncertainty Calculator
//
//  Created by Thyme Nawaphanarat on 8/03/20.
//  Copyright © 2020 Thyme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var v1: UITextField!
    @IBOutlet weak var v2: UITextField!
    
    @IBOutlet weak var v1u: UITextField!
    @IBOutlet weak var v2u: UITextField!
    
    @IBOutlet weak var op: UITextField!
    
    @IBOutlet weak var result: UILabel!
//    @IBOutlet weak var resultUn: UILabel!
    @IBOutlet weak var resultUn: UILabel!
    
    @IBAction func sumbitbtn(_ sender: Any) {
        
        let value1 = Double(v1.text!)
        let value2 = Double(v2.text!)
        
        let un1 = Double(v1u.text!)
        let un2 = Double(v2u.text!)
        
        var percentUn1: Double = 0.0
        var percentUn2: Double = 0.0
        
        var totalUn: Double = 0.0
        
        var total: Double = 0.0
        
        if op.text == "+" {
            total = value1! + value2!
        }
        else if op.text == "-" {
            total = value1! - value2!
        }
        else if op.text == "*" {
            total = value1! * value2!
        }
        else {
            total = value1! / value2!
        }
        
        percentUn1 = un1! * 100.0 / Double(abs(value1!))

        percentUn2 = un2! * 100.0 / Double(abs(value2!))

        totalUn = Double(abs(total)) * (percentUn1 + percentUn2) / 100.0
        
//        let modiUn = 0.0 + totalUn
        result.text = "\(total)"
        resultUn.text = "\(totalUn)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

