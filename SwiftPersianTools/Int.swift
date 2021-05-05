//
//  Int.swift
//  SwiftPersianTools
//
//  Created by Saeed on 5/5/21.
//

import Foundation

public extension Int {

    func convertToPersianText() -> String? {
        return SwiftPersianTools.convertNumberToPersianText(inputNumber: NSNumber(integerLiteral: self))
    }
}
