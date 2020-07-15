import XCTest

import FactoryPatternTests

var tests = [XCTestCaseEntry]()
tests += FactoryMethodTests.allTests()
XCTMain(tests)
