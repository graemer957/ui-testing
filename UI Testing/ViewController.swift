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
    private let api = API()
    
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - IBActions
    @IBAction
    private func doSomething() {
        spinner.startAnimating()
        api.retrieveData { [weak self] text in
            self?.label.text = text
            
            self?.spinner.stopAnimating()
        }
    }
    
}
