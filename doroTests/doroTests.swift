//
//  doroTests.swift
//  doroTests
//
//  Created by Vmock on 23/07/16.
//  Copyright © 2016 comicsanshq. All rights reserved.
//

import XCTest
@testable import doro

class DoroTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
		PomodoroTracker.sharedPomodoroTracker.workStartTime = NSDate()
		PomodoroTracker.sharedPomodoroTracker.workTimeInterval = NSTimeInterval(30)
		PomodoroTracker.sharedPomodoroTracker.state = .Work
		XCTAssert(PomodoroTracker.sharedPomodoroTracker.timeLeft == 30)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
