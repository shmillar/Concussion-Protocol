//
//  ViewController.swift
//  Homework1
//
//  Created by Sam Millar on 10/3/19.
//  Copyright © 2019 Sam Millar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headacheField: UISegmentedControl!
    @IBOutlet weak var pressureInHeadField: UISegmentedControl!
    @IBOutlet weak var neckPainField: UISegmentedControl!
    @IBOutlet weak var nauseaOrVomitingField: UISegmentedControl!
    @IBOutlet weak var dizzinessField: UISegmentedControl!
    @IBOutlet weak var blurredVisionField: UISegmentedControl!
    @IBOutlet weak var balanceProblemsField: UISegmentedControl!
    @IBOutlet weak var sensitivityToLightField: UISegmentedControl!
    @IBOutlet weak var sensitivityToNoiseField: UISegmentedControl!
    @IBOutlet weak var feelingSlowedDownField: UISegmentedControl!
    
    var array:GameData = GameData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addGame(_ sender: UIButton) {
//        gameDictionary.add(gameNum, headacheField.selectedSegmentIndex, pressureInHeadField.selectedSegmentIndex, neckPainField.selectedSegmentIndex, nauseaOrVomitingField.selectedSegmentIndex, dizzinessField.selectedSegmentIndex, blurredVisionField.selectedSegmentIndex, balanceProblemsField.selectedSegmentIndex, sensitivityToLightField.selectedSegmentIndex, sensitivityToNoiseField.selectedSegmentIndex, feelingSlowedDownField.selectedSegmentIndex)
//        gameNum += 1
        var a = self.headacheField.selectedSegmentIndex + self.pressureInHeadField.selectedSegmentIndex +  self.neckPainField.selectedSegmentIndex + self.nauseaOrVomitingField.selectedSegmentIndex
        
        var severity:Int! = a + self.dizzinessField.selectedSegmentIndex + self.blurredVisionField.selectedSegmentIndex + self.balanceProblemsField.selectedSegmentIndex + self.sensitivityToLightField.selectedSegmentIndex + self.sensitivityToNoiseField.selectedSegmentIndex + self.feelingSlowedDownField.selectedSegmentIndex
        var total:Int! = 0
        if self.headacheField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.pressureInHeadField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.neckPainField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.nauseaOrVomitingField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.dizzinessField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.blurredVisionField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.balanceProblemsField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.sensitivityToLightField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.sensitivityToNoiseField.selectedSegmentIndex != 0
        {
            total += 1
        }
        if self.feelingSlowedDownField.selectedSegmentIndex != 0
        {
            total += 1
        }
        let b:GameRecord = GameRecord(t: total, s: severity)
        array.addGame(g: b)
    }

    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    
    @IBAction func unwindToVC1pt2(segue:UIStoryboardSegue) { }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let vc = (segue.destination as! ViewController2)
        if(segue.identifier == "unwindToVC1") {
            let vc = (segue.destination as! ViewController2)
            vc.gArray = array
        }
        if(segue.identifier == "unwindToVC1pt2") {
            let vc = (segue.destination as! ViewController3)
            vc.gArray = array
        }
    }
}

