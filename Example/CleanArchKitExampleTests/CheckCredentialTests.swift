//
//  CheckCredentialTests.swift
//  CleanArchKitExampleTests
//
//  Created by Karim Angama on 21/04/2023.
//

import XCTest
import RxSwift
@testable import CleanArchKitExample

final class CheckCredentialTests: XCTestCase {
    
    var usecase: CheckCredentialUseCase!
    var repository: RegistrationRepository!

    override func setUpWithError() throws {
        usecase = CheckCredentialUseCase()
    }

    override func tearDownWithError() throws {
        usecase = nil
        repository = nil
    }

    func testCheckCredentialExample() throws {
        
        let userId = "rtuf346gut"
        let entity = LogInResponseRaw(userId: userId)
        usecase.loginAPI = RegistrationAPIMock(entity: entity)
        usecase.execute(params: (email: "test@test.com", password: "test"))
            .subscribe(onSuccess: { response in
                XCTAssertEqual(response.userId, userId)
            }, onFailure: { error in
                XCTAssertThrowsError(error)
            }, onDisposed: nil)
            .dispose()
    }
    
    func testCheckCredentialReturnNilExample() throws {
        
        let entity = LogInResponseRaw(userId: nil)
        usecase.loginAPI = RegistrationAPIMock(entity: entity)
        usecase.execute(params: (email: "test@test.com", password: "test"))
            .subscribe(onSuccess: { response in
                XCTAssertEqual(response.userId, "")
            }, onFailure: { error in
                XCTAssertThrowsError(error)
            }, onDisposed: nil)
            .dispose()
    }

}
