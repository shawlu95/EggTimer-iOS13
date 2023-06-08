//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let softTime = 5
    let mediumTime = 7
    let hardTime = 10
    let eggTimes : [String : Int] = ["Soft": 5, "Medium": 7, "Hard": 10]
    @IBAction func hardnessSelected(_ sender: UIButton) {
        switch sender.currentTitle {
            case "Soft":
                print(softTime)
            case "Medium":
                print(mediumTime)
            case "Hard":
                print(hardTime)
            default:
                print("unknown")
        }
        print("using dictionary", eggTimes[sender.currentTitle!]!)
    }
}
