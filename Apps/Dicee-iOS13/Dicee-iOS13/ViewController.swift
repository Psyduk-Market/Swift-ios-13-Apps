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

    }
    
    // Declare/link/connect action element from Storyboard
    @IBAction func rollButton(_ sender: UIButton) {
        
        let faces = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // who.what(property of "who") = ("image literal")
        // Double click on the icon to select the image you want
        diceImageView1.image = faces.randomElement()
        diceImageView2.image = faces.randomElement()
                
    }

}

