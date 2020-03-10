//
//  NumberFormatter.swift
//  Created by Karim Ebrahem on 3/10/20.
//

import Foundation

/**
 Number formatter types
 
 - Currency: Currency formatter.
 */
public enum NumberFormatterType {
    case currency
}

/**
 *  Number formatter protocol. Consists of a string modifier and a type enum.
 */
public protocol NumberFormatter {
    var modifier: String { get }
    var type: NumberFormatterType { get }
    var style: Foundation.NumberFormatter.Style? { get }
}

public protocol NumberFormatterCustomLocaleAvailable: NumberFormatter {}

/// Number format class
public class NumberFormat {
    
    static let sharedInstance = NumberFormat()
    
    var nsFormatter = Foundation.NumberFormatter()
    
    public func format(_ number: NSNumber, formatter: NumberFormatter) -> String {
        if let customLocaleFormatter = formatter as? NumberFormatterCustomLocaleAvailable {
            return format(number, formatter: customLocaleFormatter, locale: Locale.current)
        }
        else {
            return ""
        }
    }
    
    /**
     Number formatting function for formatters that accept custom locales. Inits the NSFormatter again if style changes.
     
     - parameter number:    number to format as an NSNumber.
     - parameter formatter: the formatter to be applied, conforms to NumberFormatter protocol.
     - parameter locale:    locale to use.
     
     - returns: formatted string.
     */
    public func format(_ number: NSNumber, formatter: NumberFormatterCustomLocaleAvailable, locale: Locale) -> String {
        if let style = formatter.style , nsFormatter.numberStyle != style {
            nsFormatter = Foundation.NumberFormatter()
            nsFormatter.numberStyle = style
        }
        nsFormatter.locale = locale
        nsFormatter.allowsFloats = true
        nsFormatter.maximumFractionDigits = 10
        
        var formattedString: String?
        nsFormatter.currencyCode = formatter.modifier
        nsFormatter.currencySymbol = (nsFormatter.currencyCode == CurrencyType.BTC.modifier) ? "Ƀ" : nil
        formattedString = nsFormatter.string(from: number)
        
        guard let finalString = formattedString else {
            return ""
        }
        
        return finalString
    }
    
}
