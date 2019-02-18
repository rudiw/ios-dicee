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
    
    var valueDice1: Int = 6
    var valueDice2: Int = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dice1.image = UIImage(named: ("dice\(valueDice1)"));
        self.dice2.image = UIImage(named: ("dice\(valueDice2)"));
    }

    @IBAction func doRoll(_ sender: UIButton) {
        valueDice1 = Int.random(in: 1...6)
        valueDice2 = Int.random(in: 1...6)
        
        self.dice1.image = UIImage(named: ("dice\(valueDice1)"));
        self.dice2.image = UIImage(named: ("dice\(valueDice2)"));
       
    }
    
}

