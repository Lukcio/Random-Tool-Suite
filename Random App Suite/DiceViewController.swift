//
//  DiceViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    @IBOutlet weak var diceButtonOutlet: UIButton!
    
    let diceImageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //chooses a random side and displays the associated image
    func rollDice() {
        let diceImageArrayIndex = Int(arc4random_uniform(6))
        let diceOutcome = diceImageArray[diceImageArrayIndex]
        diceButtonOutlet.setImage(UIImage(named: diceOutcome), for: UIControlState.normal)
        print(diceOutcome)
    }
    //rolls the dice when the die is tapped
    @IBAction func onDiceButtonTapped(_ sender: Any) {
        rollDice()
    }
    
    
}
