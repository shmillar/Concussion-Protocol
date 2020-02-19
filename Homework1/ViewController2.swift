//
//  ViewController2.swift
//  Homework1
//
//  Created by Sam Millar on 10/3/19.
//  Copyright © 2019 Sam Millar. All rights reserved.
//

import Foundation
import UIKit
class ViewController2: UIViewController
{
    @IBOutlet weak var total1Field: UILabel!
    @IBOutlet weak var total2Field: UILabel!
    @IBOutlet weak var total3Field: UILabel!
    @IBOutlet weak var total4Field: UILabel!
    @IBOutlet weak var total5Field: UILabel!
    @IBOutlet weak var symptom1Field: UILabel!
    @IBOutlet weak var symptom2Field: UILabel!
    @IBOutlet weak var symptom3Field: UILabel!
    @IBOutlet weak var symptom4Field: UILabel!
    @IBOutlet weak var symptom5Field: UILabel!
    @IBOutlet weak var overall1Field: UILabel!
    @IBOutlet weak var overall2Field: UILabel!
    @IBOutlet weak var overall3Field: UILabel!
    @IBOutlet weak var overall4Field: UILabel!
    @IBOutlet weak var overall5Field: UILabel!
    
    //var gArray:GameData! = GameData()
    var gArray:GameData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //dump(gArray)
        var printableArray:[GameRecord]! = gArray?.printReturn(g: gArray!)
        var count:Int! = 1
        for i in printableArray
        {
            if count == 1
            {
                self.total1Field.text = "Total # of Symptoms: " + String(i.total)
                self.symptom1Field.text = "Symptom Severity Score: " + String(i.severity)
                self.overall1Field.text = i.calculateSeverity(g: i)
            }
            else if count == 2
            {
                self.total2Field.text = "Total # of Symptoms: " + String(i.total)
                self.symptom2Field.text = "Symptom Severity Score: " + String(i.severity)
                self.overall2Field.text = i.calculateSeverity(g: i)
            }
            else if count == 3
            {
                self.total3Field.text = "Total # of Symptoms: " + String(i.total)
                self.symptom3Field.text = "Symptom Severity Score: " + String(i.severity)
                self.overall3Field.text = i.calculateSeverity(g: i)
            }
            else if count == 4
            {
                self.total4Field.text = "Total # of Symptoms: " + String(i.total)
                self.symptom4Field.text = "Symptom Severity Score: " + String(i.severity)
                self.overall4Field.text = i.calculateSeverity(g: i)
            }
            else if count == 5
            {
                self.total5Field.text = "Total # of Symptoms: " + String(i.total)
                self.symptom5Field.text = "Symptom Severity Score: " + String(i.severity)
                self.overall5Field.text = i.calculateSeverity(g: i)
            }
            count += 1
        }
        
    }
    
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
    }
    
    
}
