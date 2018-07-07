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
    
    @IBOutlet weak var maleButtonOutlet: UIButton!
    
    @IBOutlet weak var femaleButtonOutlet: UIButton!
    
    //NAME ARRAYS
    let fantasyNamesArray = ["this", "that"]
    
    let boyNamesArray = ["Oliver","George","Harry","Jack","Jacob","Noah","Charlie","Thomas","Oscar","William","James",
                         "Henry","Leo","Alfie","Joshua","Freddie","Archie","Ethan","Isaac","Alexander","Joseph","Edward","Samuel","Max","Daniel",
                         "Arthur","Lucas","Logan","Theo","Harrison","Benjamin","Mason","Sebastian","Finley","Adam","Dylan","Zachary","Riley","Teddy",
                         "Theodore","David","Toby","Jake","Louie","Elijah","Reuben","Arlo","Hugo","Luca","Jaxon","Matthew","Harvey","Reggie","Michael",
                         "Harley","Jude","Albert","Tommy","Luke","Stanley","Jenson","Frankie","Jayden","Gabriel","Ronnie","Charles","Louis",
                         "Elliott","Frederick","Nathan","Lewis","Blake","Ollie","Ryan","Tyler","Jackson","Dexter","Alex","Austin","Albie","Caleb",
                         "Carter","Bobby","Ezra","Leon","Roman","Aaron","Liam"]
    
    var girlNamesArray = ["Emma","Olivia","Ava","Isabella","Sophia","Charlotte","Amelia","Evelyn","Abigail","Harper",
                          "Emily","Elizabeth","Avery","Ella","Madison","Scarlett","Victoria","Aria","Grace","Chloe","Camila",
                          "Penelope","Riley","Layla","Nora","Zoey","Mila","Aubrey","Hannah","Lily","Addison","Eleanor","Natalie",
                          "Luna","Savannah","Brooklyn","Zoe","Stella","Hazel","Ellie","Paisley","Audrey","Skylar","Violet","Claire",
                          "Bella","Aurora","Anna","Samantha","Caroline","Genesis","Aaliyah","Kennedy","Kinsley","Allison","Maya",
                          "Sarah","Madelyn","Alexa","Ariana","Elena","Gabriella","Naomi","Alice","Sadie","Hailey","Eva","Emilia",
                          "Autumn","Quinn","Nevaeh","Piper","Ruby","Serenity","Willow","Everly","Cora","Kaylee","Lydia","Aubree",
                          "Arianna","Eliana","Peyton","Melanie",
                          "Gianna","Isabelle","Julia","Valentina"]
    
    var selectedNumberOfNames: Int = 1
    
    var selectedGender = ""
    
    let nameTransferClass = NameTransferClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfNamesSegmentedController.tintColor = UIColor.white
        //print(englishNamesArray)
        // Do any additional setup after loading the view.
        //print(boyNamesArray.count)
        print(selectedNumberOfNames)
        print(girlNamesArray.count)
        print(boyNamesArray.count)
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
    
    @IBAction func onMaleClicked(_ sender: Any) {
        selectedGender = "Boy"
        maleButtonOutlet.alpha = 1.0
        femaleButtonOutlet.alpha = 0.5
        //maleView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        print(selectedGender)
    }
    @IBAction func onFemaleClicked(_ sender: Any) {
        selectedGender = "Girl"
        femaleButtonOutlet.alpha = 1.0
        maleButtonOutlet.alpha = 0.5
        //femaleView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        print(selectedGender)
    }
    
    //chooses a random name from the name array
    func chooseName() {
        if nameTransferClass.namesArray.count > 0 {
            nameTransferClass.namesArray.removeAll()
        }
        for i in 1...selectedNumberOfNames {
            if selectedGender == "Boy" {
                let boyNameArrayIndex = Int(arc4random_uniform(88))
                nameTransferClass.namesArray.append(boyNamesArray[boyNameArrayIndex])
            } else {
                let girlNameArrayIndex = Int(arc4random_uniform(88))
                nameTransferClass.namesArray.append(girlNamesArray[girlNameArrayIndex])
            }
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
