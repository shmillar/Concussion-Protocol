//
//  GameRecord.swift
//  Homework1
//
//  Created by Sam Millar on 10/3/19.
//  Copyright © 2019 Sam Millar. All rights reserved.
//

import Foundation
class GameRecord
{
    var total:Int!
    var severity:Int!
    
    init(t: Int, s: Int)
    {
        self.total = t
        self.severity = s
    }
    
    func calculateSeverity(g: GameRecord) -> String
    {
        var ret:String! = ""
        if g.total < 3 && g.severity < 10
        {
            ret = "No Difference"
        }
        else if g.total < 3 && g.severity >= 10
        {
            ret = "Unsure"
        }
        else if g.total >= 3 || g.severity >= 15
        {
            ret = "Very Different"
        }
        return ret
    }
//    var gameNumber:Int!
//    var headache:Int!
//    var headPressure:Int!
//    var neckPain:Int!
//    var nauseaOrVomiting:Int!
//    var dizziness:Int!
//    var blurredVision:Int!
//    var balanceProblems:Int!
//    var sensitivityToLight:Int!
//    var sensitivityToNoise:Int!
//    var feelingSlowedDown:Int!
//
//    init(gameNumber:Int, headache: Int, headPressure: Int, neckPain: Int, nauseaOrVomiting: Int, dizziness: Int, blurredVision: Int, balanceProblems: Int, sensitivityToLight: Int, sensitivityToNoise: Int, feelingSlowedDown: Int){
//        self.gameNumber = gameNumber
//        self.headache = headache
//        self.headPressure = headPressure
//        self.neckPain = neckPain
//        self.nauseaOrVomiting = nauseaOrVomiting
//        self.dizziness = dizziness
//        self.blurredVision = blurredVision
//        self.balanceProblems = balanceProblems
//        self.sensitivityToLight = sensitivityToLight
//        self.sensitivityToNoise = sensitivityToNoise
//        self.feelingSlowedDown = feelingSlowedDown
//    }
}
