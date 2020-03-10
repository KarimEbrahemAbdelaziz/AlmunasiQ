import Foundation

@propertyWrapper
public struct AQCurrency<T> where T: NumberFormatProvider {
    
    private var number: T
    private var currency: CurrencyType
    public var projectedValue: String
    
    public init(number: T, currency: CurrencyType = CurrencyType.USD) {
        self.number = number
        self.currency = currency
        self.projectedValue = ""
    }
    
    public var wrappedValue: T {
        get { return number }
        set {
            number = newValue
            projectedValue = number.format(currency)
        }
    }
}
