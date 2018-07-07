//
//  RandomNameViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class RandomNameViewController: UIViewController {
    
    
    @IBOutlet weak var numberOfNamesSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var genderSegmentedController: UISegmentedControl!
    
    //NAME ARRAYS
    let fantasyNamesArray = ["this", "that"]
    
    let boyNamesArray = ["Oliver","George","Harry","Jack","Jacob","Noah","Charlie","Thomas","Oscar","William","James",
    "Henry","Leo","Alfie","Joshua","Freddie","Archie","Ethan","Isaac","Alexander","Joseph","Edward","Samuel","Max","Daniel",
    "Arthur","Lucas","Logan","Theo","Harrison","Benjamin","Mason","Sebastian","Finley","Adam","Dylan","Zachary","Riley","Teddy",
    "Theodore","David","Toby","Jake","Louie","Elijah","Reuben","Arlo","Hugo","Luca","Jaxon","Matthew","Harvey","Reggie","Michael",
    "Harley","Jude","Albert","Tommy","Luke","Stanley","Jenson","Frankie","Jayden","Gabriel","Elliot","Ronnie","Charles","Louis",
    "Elliott","Frederick","Nathan","Lewis","Blake","Ollie","Ryan","Tyler","Jackson","Dexter","Alex","Austin","Albie","Caleb",
    "Carter","Bobby","Ezra","Ellis","Leon","Roman","Aaron","Liam","Jesse","Jasper","Felix","Jamie"]
    
    let numberOfNamesArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10",]
    var selectedNumberOfNames: Int = 1
    
    let nameTransferClass = NameTransferClass()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return numberOfNamesArray.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfNamesSegmentedController.tintColor = UIColor.white
        genderSegmentedController.tintColor = UIColor.white
        //print(englishNamesArray)
        // Do any additional setup after loading the view.
        //print(boyNamesArray.count)
        print(selectedNumberOfNames)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //updates the selected number of names variable
    @IBAction func onNumberOfNamesTapped(_ sender: UISegmentedControl) {
        selectedNumberOfNames = Int(sender.titleForSegment(at: sender.selectedSegmentIndex)!)!
        print(selectedNumberOfNames)
    }
    
    //chooses a random name from the name array
    func chooseName() {
        if nameTransferClass.namesArray.count > 0 {
            nameTransferClass.namesArray.removeAll()
        }
        for i in 1...selectedNumberOfNames {
            print(i)
            print(selectedNumberOfNames)
            var boyNameArrayIndex = Int(arc4random_uniform(94))
            nameTransferClass.namesArray.append(boyNamesArray[boyNameArrayIndex])
        }
        print(nameTransferClass.namesArray)
    }
    
    //Actions to execute when the generate button is tapped
    @IBAction func onGenerateTapped(_ sender: Any) {
        chooseName()
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let dvc = segue.destination as! SecondRandomNameViewController
        // Pass the selected object to the new view controller.
        dvc.nameTransferClass = self.nameTransferClass
    }
}
