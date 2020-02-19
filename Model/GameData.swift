//
//  GameData.swift
//  Homework1
//
//  Created by Sam Millar on 10/5/19.
//  Copyright © 2019 Sam Millar. All rights reserved.
//

import Foundation
class GameData
{
    var gArray:[GameRecord]! = []
    
    init()
    {}
    
    func addGame(g: GameRecord)
    {
        gArray.append(g)
        //dump(gArray)
    }
    
    func printReturn(g: GameData) -> [GameRecord]
    {
        var ret:[GameRecord] = []
        if gArray.count <= 5
        {
            //fill ret with all responses
            for i in gArray
            {
                ret.append(i)
            }
        }
        else
        {
            //fill ret with last 5 responses
            //var c:Int! = gArray.count - 4
            var count:Int! = 0
            for i in gArray.reversed()
            {
                if count < 5
                {
                    //ret.append(i)
                    ret.insert(i, at: 0)
                }
                count += 1
            }
        }
        return ret
    }
    
    func sendRating(g: GameData) -> [GameRecord]
    {
        var a:[GameRecord] = g.printReturn(g: g)
        if a.count < 5
        {
            while a.count > 2
            {
                a.remove(at: 0)
            }
        }
        else
        {
            a.remove(at: 0)
            a.remove(at: 0)
            a.remove(at: 0)
        }
        return a.reversed()
    }
}
