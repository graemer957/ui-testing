//
//  ViewController.swift
//  UI Testing
//
//  Created by Graeme Read on 25/11/2016.
//  Copyright © 2016 Graeme Read. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var spinner: UIActivityIndicatorView!
    
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - IBActions
    @IBAction
    private func doSomething() {
        label.text = "Hello world"
    }
    
    
}
