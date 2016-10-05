//
//  MattTests.swift
//  MattTests
//
//  Created by Pablo Elustondo on 2016-09-26.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import XCTest
@testable import Matt

class MattTests: XCTestCase {
    
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
    }
    
    func testMealInitialization() {
        // Success case.
        let potentialItem = Concern(name: "Newest meal", photo: nil, status: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Concern(name: "", photo: nil, status: 0)
        XCTAssertNil(noName, "Empty name is invalid")
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
