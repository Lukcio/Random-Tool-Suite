//
//  DiceViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    
    let diceImageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rollDice() {
        let diceImageArrayIndex = Int(arc4random_uniform(6))
        let diceOutcome = diceImageArray[diceImageArrayIndex]
        diceImageView1.image = UIImage(named: diceOutcome)
        print(diceOutcome)
    }
    
    @IBAction func onRollButtonTapped(_ sender: Any) {
        rollDice()
    }
}
