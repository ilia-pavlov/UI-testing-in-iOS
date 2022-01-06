//
//  POM.swift
//  UITestingTutorialUITests
//
//  Created by Ilia Pavlov on 12/28/21.
//  Copyright © 2021 Code Pro. All rights reserved.
//

import XCTest

class POM: XCTestCase {
    var app: XCUIApplication!
    
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        // app.launchArguments = ['testing']
        
    // add system dialogs monitor before launch
    addUIInterruptionMonitor(withDescription: "alert monitor") { (alert) -> Bool in
            let btnAllow = alert.buttons["Allow"]
            let btnOK = alert.buttons["OK"]
            if btnAllow.exists {
                btnAllow.tap() 
                return true
            }
            if btnOK.exists {
                btnOK.tap()
                return true
            }
            XCTFail("Unexpected System Alert")
            return false
        }
        
        app.launch()
    }

    override func tearDownWithError() throws {
        let screenshot = XCUIScreen.main.screenshot()
        let arrachment = XCTAttachment(screenshot: screenshot)
        arrachment.lifetime = .deleteOnSuccess
        add(arrachment)
        app.terminate()
    }
    
    private enum SPECs {
        static let newMusic = "New Music" // label
    }

    func testLoginFlow() {
        LoginScreen(app: app)
            .tapButton("Profile")
            .textFieldAvailable("Username")
            .typeUserName("CodePro")
            .typePassword("abc123")
            .tapStaticText("Login")
            .elementExists("NewMusicSection_ID") // @discardableResult
    }
        
    func testLoginFlowUpdate01() {
        BaseFunc(app: app)
            .tapAnyButton("Profile")
        LoginScreen(app: app)
            .textFieldAvailable("Username")
            .typeUserName("CodePro")
            .typePassword_toBaseFunc("abc123") // return BaseFunc
            .tapAnyButton("Login")
            .elementMatching("New Music", SPEC: SPECs.newMusic) // this func returned nothing, since we have nothing to do with func value
    }
}
    


