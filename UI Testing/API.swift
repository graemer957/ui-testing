//
//  API.swift
//  UI Testing
//
//  Created by Graeme Read on 25/11/2016.
//  Copyright © 2016 Graeme Read. All rights reserved.
//

import Foundation


struct API {
    
    // MARK: - Structs
    struct Constants {
        static let delay = 4
    }
    
    
    // MARK: - Instance methods
    func retrieveData(completion: @escaping (String) -> Void) {
        delay(Constants.delay) {
            completion("Hello World")
        }
    }
    
    
    // MARK: - Private methods
    private func delay(_ delay: Int, block: @escaping () -> Void) {
        let delay = DispatchTime.now() + Double(Int64(UInt64(delay) * NSEC_PER_SEC)) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delay, execute: block)
    }
    
}
