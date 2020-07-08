import XCTest

import strategyTests

var tests = [XCTestCaseEntry]()
tests += StrategyTests.allTests()
XCTMain(tests)
