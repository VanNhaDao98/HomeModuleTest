import XCTest
@testable import HomeModuleDemo

final class HomeModuleDemoTests: XCTestCase {
    
    private var demo: HomeModuleDemo?
    
    override func setUp() {
        super.setUp()
        demo = HomeModuleDemo()
    }
    
    override func tearDown() {
        demo = nil
        super.tearDown()
        
    }
    
    func testEqual() {
        XCTAssertEqual(demo?.demo(), "demo")
    }
    
    func testNotEqual() {
        XCTAssertNotEqual(demo?.demo(), "no")
    }

}
