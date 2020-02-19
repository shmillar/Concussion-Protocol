//
//  ViewController3.swift
//  Homework1
//
//  Created by Sam Millar on 10/3/19.
//  Copyright © 2019 Sam Millar. All rights reserved.
//

import Foundation
import UIKit
class ViewController3: UIViewController
{
    
    @IBOutlet weak var firstOutput: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var gArray:GameData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printOutput()
    }
    
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindToVC1pt2", sender: self)
    }
    
    func printOutput()
    {
        let sArray:[GameRecord]! = gArray?.sendRating(g: gArray!)
        var a:Int = 0
        var b:Int = 0
        for i in sArray
        {
            a = a + i.total
            b = b + i.severity
        }
        
        if a < 3 && b < 10
        {
            self.firstOutput.text = "You are not at risk"
            self.imageView.image = UIImage(named: "greencircle")
        }
        else if a < 3 && b >= 10
        {
            self.firstOutput.text = "Unsure if you're at risk"
            self.imageView.image = UIImage(named: "yellowcircle")
        }
        else if a >= 3 || b >= 15
        {
            self.firstOutput.text = "You are at risk"
            self.imageView.image = UIImage(named: "redcircle")
        }
    }
}
