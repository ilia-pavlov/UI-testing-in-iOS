xcodebuild \
  -project UITestingTutorial.xcodeproj \
  -scheme UITestingTutorial \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 8,OS=15.2' \
  -destination 'platform=iOS Simulator,name=iPhone 11,OS=15.2' \
  -destination 'platform=iOS Simulator,name=iPhone SE (2nd generation),OS=15.2' \
  -destination 'platform=iOS Simulator,name=iPhone 11 Pro Max,OS=15.2' \
  -destination 'platform=iOS Simulator,name=iPhone 13 mini,OS=15.2' \
  -destination 'platform=iOS Simulator,name=iPhone 13 Pro Max,OS=15.2' \
  test \
  | xcbeautify
