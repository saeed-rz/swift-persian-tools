//
//  SwiftPersianTools.swift
//  SwiftPersianTools
//
//  Created by Saeed on 5/5/21.
//

import Foundation

internal class SwiftPersianTools {

    class func convertNumberToPersianText(inputNumber: NSNumber) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "fa_IR")
        return formatter.string(from: inputNumber)
    }

    class func convertToRTLCurrency(input: Int, symbol: CurrencySymbol) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal

        let formattedCurrency = formatter.string(for: input)
        return "\(formattedCurrency ?? "") \(symbol.rawValue)"
    }

    class func convertToLTRCurrency(input: Int, symbol: CurrencySymbol) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal

        let formattedCurrency = formatter.string(for: input)
        return "\(symbol.rawValue)\(formattedCurrency ?? "")"
    }
}
