//
//  GetFeedListUseCaseTests.swift
//  SwiftDiExampleTests
//
//  Created by Endtry on 10/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import XCTest
@testable import SwiftDiExample
@testable import Promises

class GetFeedListUseCaseTests: XCTestCase {
    
    private var getFeedListUseCase: GetFeedListUseCase?
    
    func testExecute_ShouldHasFeedList_WhenGetFeedSuccess() {
        // Given
        self.getFeedListUseCase = DefaultGetFeedListUseCase(feedRepository: MockFeedRepository())
        
        // When
        let promise = self.getFeedListUseCase?.execute().then{ value in
            return value
        }
        
        // Then
        XCTAssert(waitForPromises(timeout: 10))
        XCTAssertEqual(promise?.value?.count, 1)
        XCTAssertNil(promise?.error)
    }
    
}

class MockFeedRepository: FeedRepository {
    func getFeedList() -> Promise<Array<Feed>> {
        return Promise { (resolve, reject) in
            resolve([Feed(id: 1, title: "Mock title 1", desc: "Mock desc 1")])
        }
    }
}
