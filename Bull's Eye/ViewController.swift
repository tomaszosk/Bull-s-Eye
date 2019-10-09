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
    
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentValue = lroundf(slider.value)
        
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Alert's Title", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
//        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    
}

