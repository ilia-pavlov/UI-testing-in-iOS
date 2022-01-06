//
//  howTo.swift
//  UITestingTutorialUITests
//
//  Created by Ilia Pavlov on 1/5/22.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import XCTest

class howTo: XCTestCase {
    
    let app = XCUIApplication()
    
   /* How to slide a slider
    
    When adjusting a UISlider with UI Testing you don’t pass in the value you want to set. Instead, you normalize the value on a scale from 0 to 1. For example, the slider in Volley has a range of 0 to 10. To slide the scrubber to 7 we pass in 0.7, or, how I like to think of it, 70%.
    */
    func slid() {
        app.sliders.element.adjust(toNormalizedSliderPosition: 0.7)
    }
    
    /*
    How to select an item from a picker
     
    XCUIElement has a special method for interacting with UIPickerViews. For a picker with only one wheel, we can access it via element() then just adjust to our specified value.

    Picker with one wheel
     */
    func singPicker() {
        app.pickerWheels.element.adjust(toPickerWheelValue: "6-2 Formation")
    }
    
    /*
     Picker with multiple Wheels
     
     If the picker is more complex with multiple wheels we have a little set up to do. We need a way to identify the different wheels to the framework. Conforming to the UIPickerViewAccessibilityDelegate provides the right interface to set accessibility text on each picker.
     
    
    Declaration is only valid at file scope
    
     extension ManageTeamViewController: UIPickerViewAccessibilityDelegate {
         func pickerView(_ pickerView: UIPickerView, accessibilityHintForComponent component: Int) -> String? {
             return component == 0 ? "Attackers Formation" : "Setters Formation"
         }
     
     This then sets the first wheel’s accessibility title to “Attackers Formation, 4 attackers.” Notice how the selected value sneaks in? To actually select the element we will need to match it with a BEGINSWITH predicate.
     
    let attackers = NSPredicate(format: "label BEGINSWITH 'Attackers Formation'")
    let attackersPicker = app.pickerWheels.element(matching: attackers)
        attackersPicker.adjust(toPickerWheelValue: "5 attackers")
    
    let setters = NSPredicate(format: "label BEGINSWITH 'Setters Formation'")
    let settersPicker = app.pickerWheels.element(matching: setters)
         settersPicker.adjust(toPickerWheelValue: "1 setter")
     
}
     
     How to “pull to refresh”
     To replicate this gesture we need to drop into the XCUICoordinate API. You can use these objects to interact with specific points on the screen, not necessarily tied to any particular element. This becomes very useful when we want to drag an element to a specific location.

     First, grab a reference to the first cell in your table. Then create a coordinate with zero offset, CGVectorMake(0, 0). This will normalize a point right on top of the first cell.

     Using this point we can create an imaginary coordinate farther down the screen. I’ve found that a dy of six is the smallest amount needed to trigger the pull-to-refresh gesture.

     We can then execute the gesture by grabbing the first coordinate and dragging it to the second one.

     let firstCell = app.staticTexts["Adrienne"]
     let start = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
     let finish = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 6))
     start.press(forDuration: 0, thenDragTo: finish)
     
     
     source https://masilotti.com/ui-testing-cheat-sheet/
     */
    
    
    
}
 

