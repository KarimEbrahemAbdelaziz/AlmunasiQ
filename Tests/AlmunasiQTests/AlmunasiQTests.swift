import XCTest
@testable import AlmunasiQ

final class AlmunasiQTests: XCTestCase {
    
    struct SomeStructure {
        @AQCurrency(number: 0) var someNumber: Int
        @AQCurrency(number: 0.0, currency: .EUR) var someNumberDobule: Double
    }
    
    func testExampleDouble() {
        var someStructure = SomeStructure()
        someStructure.someNumberDobule = 10.0476
        
        XCTAssertEqual(someStructure.someNumberDobule, 10.0476)
        XCTAssertEqual(someStructure.$someNumberDobule, "€10.0476")
    }
    
    func testExampleInt() {
        var someStructure = SomeStructure()
        someStructure.someNumber = 10
        
        XCTAssertEqual(someStructure.someNumber, 10)
        XCTAssertEqual(someStructure.$someNumber, "$10.00")
    }

    static var allTests = [
        ("testExampleDouble", testExampleDouble),
        ("testExampleInt", testExampleInt),
    ]
}
