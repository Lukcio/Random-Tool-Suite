//
//  RandomNumberViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class RandomNumberViewController: UIViewController {
    
    @IBOutlet weak var minNumberTextField: UITextField!
    @IBOutlet weak var maxNumberTextField: UITextField!
    @IBOutlet weak var numberOfNumbersSegmentedController: UISegmentedControl!
    
    var numberTransferClass = NumberTransferClass()
    var selectedNumberOfNumbers:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfNumbersSegmentedController.tintColor = UIColor.white
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(RandomNumberViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToInitialViewController(segue: UIStoryboardSegue) {
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func onNumberOfNumbersTapped(_ sender: UISegmentedControl) {
        selectedNumberOfNumbers = Int(sender.titleForSegment(at: sender.selectedSegmentIndex)!)!
        print(selectedNumberOfNumbers)
    }
    
    func chooseNumber() {
        if numberTransferClass.randomNumberArray.count > 0 {
            numberTransferClass.randomNumberArray.removeAll()
        }
        let minNumber = UInt32(minNumberTextField.text!)
        let maxNumber = UInt32(maxNumberTextField.text!)
        for i in 1...selectedNumberOfNumbers {
            if minNumberTextField.text != "" && maxNumberTextField.text != "" {
                let randomNum = randomNumber(min: minNumber!, max: maxNumber!)
                numberTransferClass.randomNumberArray.append(String(randomNum))
            }
        }
    }
    
    func randomNumber(min: UInt32, max: UInt32) -> Int {
        let randomNumber = Int(arc4random_uniform(max) + min)
        return randomNumber
    }
    
    @IBAction func onMinEditingEnded(_ sender: Any) {
        dismissKeyboard()
    }
    @IBAction func onMaxEditingEnded(_ sender: Any) {
        dismissKeyboard()
    }
    @IBAction func onGenerateTapped(_ sender: Any) {
        chooseNumber()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let dvc = segue.destination as! SecondNumberViewController
        // Pass the selected object to the new view controller.
        dvc.numberTransferClass = self.numberTransferClass
    }
}
