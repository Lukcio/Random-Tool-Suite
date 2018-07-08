//
//  SecondNumberViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/7/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class SecondNumberViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    
    var numberTransferClass = NumberTransferClass()

    override func viewDidLoad() {
        super.viewDidLoad()
        displayNames()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateLabelArray() -> [UILabel] {
        var labelArray = [UILabel]()
        labelArray.append(label1)
        labelArray.append(label2)
        labelArray.append(label3)
        labelArray.append(label4)
        labelArray.append(label5)
        labelArray.append(label6)
        labelArray.append(label7)
        labelArray.append(label8)
        labelArray.append(label9)
        labelArray.append(label10)
        return labelArray
    }
    
    func displayNames() {
        var labelArray = populateLabelArray()
        let numberOfNumbersInArray = numberTransferClass.randomNumberArray.count
        if numberOfNumbersInArray > 0 {
            for i in 1...numberOfNumbersInArray {
                if i <= numberOfNumbersInArray {
                    labelArray[i-1].text = numberTransferClass.randomNumberArray[i-1]
                } else {
                    break
                }
            }
        } else {
            label1.text = "No range selected"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
