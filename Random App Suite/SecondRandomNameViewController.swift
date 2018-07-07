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
    
    func displayNames() {
        nameLabel1.text = nameTransferClass.namesArray[0]
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
