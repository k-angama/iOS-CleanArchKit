//
//  CleanArchKitTests.swift
//  CleanArchKitTests
//
//  Created by Karim Angama on 11/04/2023.
//

import XCTest
@testable import CleanArchKit

final class CleanArchKitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRawToDomainMapperExample() throws {
        let mockRaw = MockRaw(name: "Michel Dupond", email: "mdupond@test.com")
        let toDomain = MockMapper.mapToDomain(type: mockRaw)
        XCTAssertEqual(toDomain.email, "mdupond@test.com")
        XCTAssertEqual(toDomain.firstname, "Michel")
        XCTAssertEqual(toDomain.lastname, "Dupond")
    }
    
    func testDomainToRawMapperExample() throws {
        let mockDomain = MockDomain(firstname: "Michel", lastname: "Dupond", email: "mdupond@test.com")
        let fromRaw = MockMapper.mapFromDomain(type: mockDomain)
        XCTAssertEqual(fromRaw.email, "mdupond@test.com")
        XCTAssertEqual(fromRaw.name, "Michel Dupond")
    }

}

