//
//  FeedLocalDataSourceTests.swift
//  SwiftDiExampleTests
//
//  Created by Endtry on 10/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import XCTest
@testable import SwiftDiExample
@testable import Promises

class FeedLocalDataSourceTests: XCTestCase {
    
    private var feedLocalDataSource: FeedDataSource?
    
    func testGetFeedList_ShouldHasFeedList_WhenGetFeedSuccess() {
        // Given
        self.feedLocalDataSource = FeedLocalDataSource()
        
        // When
        let promise = self.feedLocalDataSource?.getFeedList().then { value in
            return value
        }
        
        // Then
        XCTAssert(waitForPromises(timeout: 10))
        XCTAssertEqual(promise?.value?.count, 20)
        XCTAssertNil(promise?.error)
    }
}
