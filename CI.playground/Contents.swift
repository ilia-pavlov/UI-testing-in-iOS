/* xcodebuild
-xctestrun project.xctestrun
-destination 'platform=iOS Simulator,name=iPhone 8,OS=15.2' \

 
 
 
 xcodebuild test
 -project MyProject.xcodeproj
 -scheme Mycheme
 -resultBundlePath /path/to/ResultBoundle.xcresult
 


xcrun xcresulttool get --path ResultBundle.xcresult --format json




xcodebuild \
  -project UITestingTutorial.xcodeproj \
  -scheme UITestingTutorial \
  -resultBundlePath /Users/illiapavlov/Documents/person_info/ios-ui-testing-tutorial/ResultBoundle.xcresult

 xcrun xcresulttool fromatDescription option
 
 xcrun xcresulttool get --path ResultBundle.xcresult --format json
 
 xcrun xccov view --report /Users/illiapavlov/Documents/person_info/ios-ui-testing-tutorial/ResultBoundle.xcresult
 
 xcrun xccov view --report ResultBoundle.xcresult
 */
