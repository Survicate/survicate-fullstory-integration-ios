import XCTest
import Survicate
@testable import survicate_fullstory_integration

final class survicate_fullstory_integration_iosTests: XCTestCase {
    private static let SAMPLE_RESPONSE_UUID = "00000000-0000-0000-0000-000000000000"
    private static let SAMPLE_VISITOR_UUID = "10000000-0000-0000-0000-000000000001"

    func testHasCorrectProviderName() {
        XCTAssertEqual("fullstory", SurvicateFullStoryIntegration().providerName)
    }

    func testHasCorrectEventName() {
        let integration = SurvicateFullStoryIntegration()
        XCTAssertEqual("Survicate question answered", integration.eventName)
    }
}
