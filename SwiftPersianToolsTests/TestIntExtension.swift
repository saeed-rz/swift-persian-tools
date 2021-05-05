//
//  TestIntExtension.swift
//  SwiftPersianToolsTests
//
//  Created by Saeed on 5/5/21.
//

import XCTest

class TestIntExtension: XCTestCase {

    func testConvertToPersianText() throws {
        var number: Int = 1

        guard let persianText = number.convertToPersianText() else {
            XCTFail()
            return
        }

        XCTAssert(persianText == "یک")

        number = 125

        XCTAssertNotNil(number.convertToPersianText())

        XCTAssert((number.convertToPersianText() ?? "") == "صد و بیست و پنج")
    }
}
