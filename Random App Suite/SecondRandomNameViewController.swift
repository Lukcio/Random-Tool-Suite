//
//  SecondRandomNameViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class SecondRandomNameViewController: UIViewController {
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var nameLabel4: UILabel!
    @IBOutlet weak var nameLabel5: UILabel!
    @IBOutlet weak var nameLabel6: UILabel!
    @IBOutlet weak var nameLabel7: UILabel!
    @IBOutlet weak var nameLabel8: UILabel!
    @IBOutlet weak var nameLabel9: UILabel!
    @IBOutlet weak var nameLabel10: UILabel!
    
    var nameTransferClass = NameTransferClass()
    
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
        labelArray.append(nameLabel1)
        labelArray.append(nameLabel2)
        labelArray.append(nameLabel3)
        labelArray.append(nameLabel4)
        labelArray.append(nameLabel5)
        labelArray.append(nameLabel6)
        labelArray.append(nameLabel7)
        labelArray.append(nameLabel8)
        labelArray.append(nameLabel9)
        labelArray.append(nameLabel10)
        return labelArray
    }
    
    func displayNames() {
        var labelArray = populateLabelArray()
        let numberOfNamesInArray = nameTransferClass.namesArray.count
        for i in 1...numberOfNamesInArray {
            if i <= numberOfNamesInArray {
                labelArray[i-1].text = nameTransferClass.namesArray[i-1]
            } else {
                break
            }
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
