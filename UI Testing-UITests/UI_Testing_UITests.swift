//
//  UI_Testing_UITests.swift
//  UI Testing-UITests
//
//  Created by Graeme Read on 25/11/2016.
//  Copyright © 2016 Graeme Read. All rights reserved.
//

import XCTest


class UI_Testing_UITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared().orientation = .unknown
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    // MARK: - UI Tests
    func testUIIsAsWeExpect() {
        let application = XCUIApplication()
        
        XCTAssert(application.activityIndicators.count == 0, "Spinner should not be present")
        XCTAssertTrue(application.staticTexts["Unknown"].exists, "Could not find my label")
        XCTAssertTrue(application.buttons["Do Something"].exists, "Could not find my button")
    }
    
    func testButtonTap() {
        let application = XCUIApplication()
        application.buttons["Do Something"].tap()
        
        XCTAssert(application.activityIndicators.count == 1, "Spinner should be present")
        
        let label = application.staticTexts["Hello World"]
        self.expectation(for: NSPredicate(format: "exists == 1"),
                         evaluatedWith: label,
                         handler: nil)
        self.expectation(for: NSPredicate(format: "count == 0"),
                         evaluatedWith: application.activityIndicators,
                         handler: nil)
        
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
}
