//
//  ViewController.swift
//  Dicee
//
//  Created by Rudi Wijaya on 18/02/19.
//  Copyright © 2019 Rudi Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    let diceImages : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"];
    
    var valueDice1: Int = 0;
    var valueDice2: Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomAndUpdateDices();
    }

    @IBAction func doRoll(_ sender: UIButton) {
        randomAndUpdateDices();
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == UIEvent.EventSubtype.motionShake {
            randomAndUpdateDices();
        }
    }
    
    func randomAndUpdateDices() {
        valueDice1 = Int.random(in: 0...5);
        valueDice2 = Int.random(in: 0...5);
        
        self.dice1.image = UIImage(named: diceImages[valueDice1]);
        self.dice2.image = UIImage(named: diceImages[valueDice2]);
    }
    
}

