//
//  1.swift
//  UITestingTutorialUITests
//
//  Created by Ilia Pavlov on 12/30/21.
//  Copyright © 2021 Code Pro. All rights reserved.
//

import XCTest

protocol BaseScreen {
    var app:XCUIApplication { get }
}

struct BaseFunc : BaseScreen {
    let app: XCUIApplication
    
    private enum Idetifiers {
        
    }
    
    @discardableResult
    func tapAnyButton(_ indetifier: String) -> Self {
        let viaStaticText = app.staticTexts[indetifier]
        let viaButtons = app.buttons[indetifier]
        
        if viaStaticText.exists {
            viaStaticText.tap()
        }
        else if viaButtons.exists {
            viaButtons.tap()
        }
        return self
  }
    
    func elementExists(_ indetifier: String) -> Self {
        let element = app.staticTexts[indetifier]
        
        XCTAssertTrue(element.waitForExistence(timeout: 4), "Element \(element) wasn't found")
        return self
    }
    
    // @discardableResult
    func elementMatching(_ indetifier: String, SPEC: String) {
        let elStaticText = app.staticTexts[indetifier]
        
        XCTAssertTrue(elStaticText.waitForExistence(timeout: 4))
        
        XCTAssertEqual(elStaticText.label, SPEC)
    }

}
