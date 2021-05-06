//
//  DumbTheBumpTests.swift
//  DumbTheBumpTests
//
//  Created by Mario on 3/11/21.
//

import XCTest
@testable import DumbTheBump

class DumbTheBumpTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testInitializer() {
        let defaultWeight = Weight(unit: "Imperial", month: 3, day: 10, year: 2021, weight: 120)
        XCTAssertEqual(defaultWeight.unit, "Imperial")
        XCTAssertEqual(defaultWeight.month, 3)
        XCTAssertEqual(defaultWeight.day, 10)
        XCTAssertEqual(defaultWeight.year, 2021)
        XCTAssertEqual(defaultWeight.weight, 120)
        
        let anotherWeight = Weight(unit: "Metric", month: 3, day: 10, year: 2021, weight: 120)
        XCTAssertEqual(anotherWeight.unit, "Metric")
        XCTAssertEqual(anotherWeight.month, 3)
        XCTAssertEqual(anotherWeight.day, 10)
        XCTAssertEqual(anotherWeight.year, 2021)
        XCTAssertEqual(anotherWeight.weight, 120)
    }
    
    func testInitializerTracker() {
        let aTracker = Tracker()
        XCTAssertEqual(aTracker.tracker.count, 0)
    }
}
