import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(TemplateMethodPatternTests.allTests),
    ]
}
#endif
