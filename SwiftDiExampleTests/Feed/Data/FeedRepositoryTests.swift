//
//  FeedRepositoryTests.swift
//  SwiftDiExampleTests
//
//  Created by Endtry on 10/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import XCTest
@testable import SwiftDiExample
@testable import Promises

class FeedRepositoryTests: XCTestCase {
    
    private var feedRepository: FeedRepository?
    
    func testGetFeedList_ShouldHasFeedList_WhenGetFeedSuccess() {
        // Given
        feedRepository = DefaultFeedRepository(feedLocalDataSource: MockFeedDataSource())
        
        // When
        let promise = self.feedRepository?.getFeedList().then { value in
            return value
        }
        
        // Then
        XCTAssert(waitForPromises(timeout: 10))
        XCTAssertEqual(promise?.value?.count, 1)
        XCTAssertNil(promise?.error)
    }
}

class MockFeedDataSource: FeedDataSource {
    func getFeedList() -> Promise<Array<Feed>> {
        return Promise { (resolve, reject) in
            resolve([Feed(id: 1, title: "Mock title 1", desc: "Mock desc 1")])
        }
    }
}
