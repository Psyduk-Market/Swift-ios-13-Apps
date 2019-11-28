//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Thyme Nawaphanarat on 28/11/19.
//  Copyright © 2019 Thyme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func AskButton(_ sender: UIButton) {
        
        let answers = [#imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball4")]
        
        imageView.image = answers.randomElement()
        
    }
    
}

