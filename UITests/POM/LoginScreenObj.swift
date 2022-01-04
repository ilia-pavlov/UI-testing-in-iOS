//
//  Screen.swift
//  UITestingTutorialUITests
//
//  Created by Ilia Pavlov on 12/28/21.
//  Copyright © 2021 Code Pro. All rights reserved.
//

import Foundation
import XCTest

protocol Screen {
    var app:XCUIApplication { get }
}

struct LoginScreen: Screen {
    let app: XCUIApplication
    
    private enum Idetifiers {
        static let profile = "Profile" // located on luanch screen
        static let userName = "Username"
        static let password = "PasswordField"
        static let loginButton = "Login"
        static let newMusicSection = "NewMusicSection_ID"// located on luanch screen
        
    }
    
    func tapButton(_ indetifier: String) -> Self {
        let button = app.buttons[indetifier]
        button.tap()
        return self
    }
    
    func textFieldAvailable(_ indetifier:String) -> Self {
        let element = app.textFields[indetifier]
        XCTAssertTrue(element.waitForExistence(timeout: 4), "Element wasn't rendered on screen")
        return self
    }
    
    func typeUserName(_ user_name: String) -> Self {
        let userName = app.textFields[Idetifiers.userName]
        userName.tap()
        userName.clearText() // custom func
        userName.typeText(user_name)
        return self
    }
    
    /* custom func just for password type
     since after passwrod type User should tap on login button */
    func typePassword_toBaseFunc(_ password: String) -> BaseFunc {
        let pwd = app.secureTextFields[Idetifiers.password]
        pwd.tap()
        pwd.clearText()
        pwd.typeText(password)
        return BaseFunc (app: app)
    }
    
    func typePassword(_ password: String) -> Self {
        let pwd = app.secureTextFields[Idetifiers.password]
        pwd.tap()
        pwd.clearText()
        pwd.typeText(password)
        return self
    }
    
    func tapStaticText(_ indetifier: String) -> Self {
        app.staticTexts[indetifier].tap()
        return self
    }
    
    @discardableResult
    func elementExists(_ indetifier: String) -> Self {
        let element = app.staticTexts[indetifier]
        XCTAssertTrue(element.waitForExistence(timeout: 4), "Element \(element) wasn't found")
        return self
    }
}
    /*
    + tap buttons [Profile]
    + wait when userNameTextField will be avalibale
    + tap on userNameTextField,and in userNameTextField input text
    + then tap on passwordSecureTextField and input text password
    + then tap on static text/ Login
    + Assert user in login state via NewMusicSection
     
     */

