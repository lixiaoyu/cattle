import XCTest

import cattleTests

var tests = [XCTestCaseEntry]()
tests += cattleTests.allTests()
XCTMain(tests)
