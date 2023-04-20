//
//  CleanArchKitExampleTests.swift
//  CleanArchKitExampleTests
//
//  Created by Karim Angama on 20/04/2023.
//

import XCTest
@testable import CleanArchKitExample

final class CheckValidEmailTests: XCTestCase {
    
    var useCase: CheckValidEmailUseCase!

    override func setUpWithError() throws {
        useCase = CheckValidEmailUseCase()
    }

    override func tearDownWithError() throws {
        useCase = nil
    }

    func testReturnFalseIfNotDot() throws {
        let value = useCase.execute(params: "test@test")
        XCTAssertEqual(false, value)
    }
    
    func testReturnFalseIfNotDotAndAt() throws {
        let value = useCase.execute(params: "testcom")
        XCTAssertEqual(false, value)
    }
    
    func testReturnFalseIfNotAt() throws {
        let value = useCase.execute(params: "test.com")
        XCTAssertEqual(false, value)
    }
    
    func testReturnFalseIf2At() throws {
        let value = useCase.execute(params: "test@@test.com")
        XCTAssertEqual(false, value)
    }
    
    func testReturnFalseIf2Dot() throws {
        let value = useCase.execute(params: "test@test.net.co")
        XCTAssertEqual(true, value)
    }
    
    func testReturnTrueWithDotAndAt() throws {
        let value = useCase.execute(params: "test@test.com")
        XCTAssertEqual(true, value)
    }

}
