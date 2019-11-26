//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // who.what(property of "who") = ("image literal")
        // Double click on the icon to select the image you want
//        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//
//        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
    }
    
    // Declare/link/connect action element from Storyboard
    @IBAction func rollButton(_ sender: UIButton) {
//        print("Button pressed.")
        let face1 = Int.random(in: 0..<6)
        let face2 = Int.random(in: 0..<6)
        
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][face1]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][face2]
                
    }

}

