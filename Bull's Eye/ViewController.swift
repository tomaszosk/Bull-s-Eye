//
//  ViewController.swift
//  Bull's Eye
//
//  Created by Tomasz Oskroba on 10/6/19.
//  Copyright © 2019 Tomasz Oskroba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue = 0
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewRound()
        
    }
    
    @IBAction func showAlert() {
        
        var difference = currentValue - targetValue
//        if currentValue > targetValue {
//            difference = currentValue - targetValue
//        } else if targetValue > currentValue {
//            difference = targetValue - currentValue
//        } else {
//            difference = 0
//        }
        if difference < 0 {
            difference *= -1
        }
        
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
//        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        
        targetValue = Int.random(in: 1...100)
//        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    
}

