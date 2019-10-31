//
//  AboutViewController.swift
//  Bull's Eye
//
//  Created by Tomasz Oskroba on 10/31/19.
//  Copyright © 2019 Tomasz Oskroba. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
        let request = URLRequest(url: url)
        webView.load(request)
        }
        
    }

//    @IBAction func close() {
//        dismiss(animated: true, completion: nil)
//    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
