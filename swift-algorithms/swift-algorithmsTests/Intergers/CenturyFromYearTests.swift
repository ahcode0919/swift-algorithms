//
//  CenturyFromYearTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 6/5/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_algorithms

class CenturyFromYearTests: XCTestCase {

    func testCenturyFromYear() {
        var century = CenturyFromYear.centuryFromYear(year: 1905)
        XCTAssertEqual(century, 20)
        
        century = CenturyFromYear.centuryFromYear(year: 1700)
        XCTAssertEqual(century, 17)
        
        century = CenturyFromYear.centuryFromYear(year: 1)
        XCTAssertEqual(century, 1)
    }
}
