//
//  RandomNameViewController.swift
//  Random App Suite
//
//  Created by Lucas Leschynski on 7/6/18.
//  Copyright © 2018 Lucas Leschynski. All rights reserved.
//

import UIKit

class RandomNameViewController: UIViewController {
    
    
    @IBOutlet weak var nameOriginPicker: UIPickerView!
    
    //NAME ARRAYS
    let fantasyNamesArray = ["this", "that"]
    let englishNamesArray = ["Oliver","George","Harry","Jack","Jacob","Noah","Charlie","Thomas","Oscar","William","James",
    "Henry","Leo","Alfie","Joshua","Freddie","Archie","Ethan","Isaac","Alexander","Joseph","Edward","Samuel","Max","Daniel",
    "Arthur","Lucas","Logan","Theo","Harrison","Benjamin","Mason","Sebastian","Finley","Adam","Dylan","Zachary","Riley","Teddy",
    "Theodore","David","Toby","Jake","Louie","Elijah","Reuben","Arlo","Hugo","Luca","Jaxon","Matthew","Harvey","Reggie","Michael",
    "Harley","Jude","Albert","Tommy","Luke","Stanley","Jenson","Frankie","Jayden","Gabriel","Elliot","Ronnie","Charles","Louis",
    "Elliott","Frederick","Nathan","Lewis","Blake","Ollie","Ryan","Tyler","Jackson","Dexter","Alex","Austin","Albie","Caleb",
    "Carter","Bobby","Ezra","Ellis","Leon","Roman","Aaron","Liam","Jesse","Jasper","Felix","Jamie"]
    let numberOfNamesArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10",]
    var selectedNumberOfNames: Int = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return numberOfNamesArray.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(englishNamesArray)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToInitialViewController(segue: UIStoryboardSegue) {
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
