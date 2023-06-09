//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var elapsed = 0
    var totalTime = 0
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimes : [String : Int] = ["Soft": 5, "Medium": 7, "Hard": 10]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        totalTime = eggTimes[sender.currentTitle!]!
        elapsed = 0
        progressBar.progress = 0.0
        
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if elapsed < totalTime {
            let progress = Float(elapsed) / Float(totalTime)
            titleLabel.text = "Progress \(100 * progress)%"
            progressBar.progress = progress
            elapsed += 1
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
            progressBar.progress = 1.0
        }
    }
}
