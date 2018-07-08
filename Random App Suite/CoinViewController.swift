//
//  CoinViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class CoinViewController: UIViewController {
    
    @IBOutlet weak var coinImageOutlet: UIButton!

    var sides = ["heads", "tails"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //chooses a random side and displays the associated image
    func flipCoin() {
        let randomNumber = Int(arc4random_uniform(2))
        let selectedSide = sides[randomNumber]
        print(selectedSide)
        if selectedSide == "heads" {
            coinImageOutlet.setImage(UIImage(named: "heads.png"), for: UIControlState.normal)
        } else {
            coinImageOutlet.setImage(UIImage(named: "tails.png"), for: UIControlState.normal)
        }
    }
    
    @IBAction func coinButton(_ sender: Any) {
        flipCoin()
    }
}
