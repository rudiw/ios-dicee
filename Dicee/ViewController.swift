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
    
    let diceImages : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var valueDice1: Int = 0
    var valueDice2: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dice1.image = UIImage(named: diceImages[valueDice1]);
        self.dice2.image = UIImage(named: diceImages[valueDice2]);
    }

    @IBAction func doRoll(_ sender: UIButton) {
        valueDice1 = Int.random(in: 0...5)
        valueDice2 = Int.random(in: 0...5)
        
        self.dice1.image = UIImage(named: diceImages[valueDice1]);
        self.dice2.image = UIImage(named: diceImages[valueDice2]);
       
    }
    
}

