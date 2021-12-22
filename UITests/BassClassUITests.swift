//
//  MethodsForUITests.swift
//  UITestingTutorialUITests
//
//  Created by Ilia Pavlov on 12/21/21.
//  Copyright © 2021 Code Pro. All rights reserved.
//

import Foundation
import XCTest

let app = XCUIApplication()

func tapOnButton(name: String) {
    let button = app.buttons[name]
    button.tap()
}

func tapOnStaticText(name: String) {
    let staticText = app.staticTexts[name]
    staticText.tap()
}

func activityIndicatorExists(name: String) {
    let activityIndicator = app.activityIndicators[name].waitForExistence(timeout: 5)
    XCTAssertTrue(activityIndicator)
}

func textFieldExists(name: String) {
    let textFiled = app.textFields[name].waitForExistence(timeout: 5)
    XCTAssertTrue(textFiled)
}

func elementByStaticTextExists(name: String) {
    let element = app.staticTexts[name].waitForExistence(timeout: 5)
    XCTAssertTrue(element)
}

func findByPredicate_InStaticText_oneArgumment(label: String) {
    let predicate = NSPredicate(format: label) //"label CONTAINS[c] 'inputNameHere'"
    let textQuery = app.tables.staticTexts.containing(predicate)
    let NewMusicFolder = textQuery.element
    XCTAssertTrue(NewMusicFolder.waitForExistence(timeout: 5), "Predicate has a wrong lable, use 'label CONTAINS[c] 'inputIdHere''")
}

func findByPredicate_InStaticText_twoArgumments(label: String, name: String) {
    let predicate = NSPredicate(format: label, name)
    let textQuery = app.tables.staticTexts.containing(predicate)
    
    let NewMusicFolder = textQuery.element
    XCTAssertTrue(NewMusicFolder.waitForExistence(timeout: 5), "Predicate has a wrong lable, use 'label CONTAINS[c] 'inputIdHere''")
}

