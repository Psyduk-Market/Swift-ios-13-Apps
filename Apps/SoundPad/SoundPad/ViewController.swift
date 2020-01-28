//
//  ViewController.swift
//  SoundPad
//
//  Created by Thyme Nawaphanarat on 27/01/20.
//  Copyright © 2020 Thyme. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Action button
    @IBAction func B1(_ sender: UIButton) {
        let name = "s" + sender.titleLabel!.text!
        print(sender.titleLabel!)
//        print(name)
        playSound(song: name)
    }


    func playSound(song: String) {
        let url = Bundle.main.url(forResource: song, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

public class LoadingButton: UIButton {
    public var isTitleHidden: Bool = false {
        didSet {
           titleLabel?.isHidden = isTitleHidden
        }
    }
    public override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.isHidden = isTitleHidden
    }
}
