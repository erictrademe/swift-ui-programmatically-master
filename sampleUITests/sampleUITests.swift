//
//  sampleUITests.swift
//  sampleUITests
//
//  Created by Eric Zhong on 6/12/16.
//  Copyright © 2016 ravi kumar. All rights reserved.
//

import XCTest

class sampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        XCTAssertTrue(app.staticTexts["label123"].exists)
//        app.secureTextFields["textfield123"].tap()
//        app.secureTextFields["textfield123"].typeText("test")
//        app.keyboards.buttons["return"].tap()

        app.sliders["slider123"].adjust(toNormalizedSliderPosition: 0.7)
        app.switches["switch123"].tap()
        app.switches["switch123"].tap()
        app.buttons["button123"].tap()
        app.alerts["RK"].buttons["OK"].tap()
        //app.alerts["alert123"].buttons["OK"].tap()
        
        
        app.datePickers["datepick123"].pickerWheels["December"].adjust(toPickerWheelValue: "January")
        app.datePickers["datepick123"].pickerWheels["6"].adjust(toPickerWheelValue: "12")
        app.datePickers["datepick123"].pickerWheels["2016"].adjust(toPickerWheelValue: "2020")
    
//        app.datePickers["datepick123"]
//        datepick123DatePicker.pickerWheels["December"].swipeUp()
//        datepick123DatePicker.pickerWheels["6"].swipeUp()
//        datepick123DatePicker.pickerWheels["2016"].tap()
        
        
        app.buttons["button456"].tap()

    }
    
}
