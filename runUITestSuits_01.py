xcodebuild \
  -project UITestingTutorial.xcodeproj \
  -scheme UITestingTutorial \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 8,OS=15.2' \
  test \
  | xcbeautify