//
//  AccessibilityIndetifier.swift
//  UITestingTutorial
//
//  Created by Ilia Pavlov on 12/21/21.
//  Copyright © 2021 Code Pro. All rights reserved.
//

import Foundation



enum AccessibilityIndetifier: String {
    case
    NewMusicFolder_ID = "NewMusicSection_ID",
    MockifyMusic_ID = "Mockify Music",
    UserName = "CodePro",
    PasswordUniq = "abc123",
    StatusLabel_ID = "smt",
    LoadingActivity = "loadingActivity",
    PasswordFiled = "PasswordField",
    ProfileFolder = "Profile",
    UserNameField = "Username"
    
}

enum AccessibilityLabel {
    
    static let smt = NSLocalizedString("Good App", comment: "Some commet")
    static let button = NSLocalizedString("button", comment: "Accessibility for button")
}
