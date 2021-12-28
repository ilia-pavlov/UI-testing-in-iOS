//
//  UITestingTutorialUITests.swift
//  UITestingTutorialUITests
//
//  Created by Ilia Pavlov on 12/17/21.
//  Copyright © 2021 Code Pro. All rights reserved.
//

import XCTest

class UITests: XCTestCase {
 
    //var app: XCUIApplication!
    let app = XCUIApplication()
    let device = XCUIDevice.shared
    
    override func setUpWithError() throws {
       continueAfterFailure = false
        
      //  var app: XCUIApplication!
        app.launch()
        device.orientation = .portrait
        
    }

    override func tearDownWithError() throws {

    }

    func testNewMusicFolderExist() {
        elementByStaticTextExists(name: "New Music")
    }
    
    func testNewMusicFolderExist_byID() {
        elementByStaticTextExists(name: "NewMusicSection_ID")
    }
    
    func testNewMusicFolderExist_byPredicate_HappyPath() {
        findByPredicate_InStaticText_oneArgumment(label: "label CONTAINS[c] 'New Music'")
     
    }
    
    func testNewMusicFolderExist_byPredicate_NegativePath() {
        findByPredicate_InStaticText_oneArgumment(label: "label CONTAINS[c] 'TATATATATA'")
    }
    
    /*
    func testLoginButton_byPredicate_HappyPath() {
      findByPredicate_InStaticText_twoArgumments(label: "label == %@" ,name: "Profile")
    }
    */
        
    // since no way to add ID, second best way is Predicate
    func testLogin_byPredicate() {
        let app = XCUIApplication()
        
        let predicate_login = NSPredicate(format: "label == %@","Profile")
        let elementQuery = app.buttons.containing(predicate_login)
        
        let loginFolder = elementQuery.element
        loginFolder.tap()
        
        let loginButton = app/*@START_MENU_TOKEN@*/.staticTexts["Login"]/*[[".buttons[\"Login\"].staticTexts[\"Login\"]",".staticTexts[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(loginButton.waitForExistence(timeout: 5))

    }
    

    func testLoginFolder(){
        //let profileButton = app.navigationBars["Mockify Music"].buttons["Profile"]
        tapOnButton(name: "Profile")
        elementByStaticTextExists(name: "Login")
    }
    

    func testUserNameField() {
        tapOnButton(name: "Profile" )
        textFieldExists(name: "Username")
    }
    
    // add wait to activity since it's fail for sometimes
    func testActivityIndicatorExists() {
        tapOnButton(name: Profile )
        tapOnStaticText(name: Login)
        activityIndicatorExists(name: InProgress)
    }
    
    // before using AccessibilityIndetifier they should be intitialie to element
    func testUserNameFieldExist_HP () {
        tapOnButton(name: AccessibilityIndetifier.ProfileFolder.rawValue)
        textFieldExists(name: AccessibilityIndetifier.UserNameField.rawValue)
    }
    
    func testScreenViewOtions() {
        XCUIDevice.shared.orientation = .landscapeLeft
        XCUIDevice.shared.orientation = .landscapeRight
        // XCUIDevice.shared.orientation = .portraitUpsideDown
        XCUIDevice.shared.orientation = .portrait
        XCUIDevice.shared.orientation = .faceDown
        XCUIDevice.shared.orientation = .faceUp
        
    }
}

