//
//  FeedViewModelTests.swift
//  SwiftDiExampleTests
//
//  Created by Endtry on 10/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import XCTest
@testable import SwiftDiExample
@testable import Promises

class FeedViewModelTests: XCTestCase {
    
    private var feedViewModel: FeedViewModel?
    
    func testExecute_ShouldHasFeedList_WhenGetFeedSuccess() {
        // Given
        self.feedViewModel = FeedViewModel(getFeedListUseCase: MockGetFeedListUseCase())
        
        // When
        self.feedViewModel?.getFeedList()
        
        // Then
        XCTAssert(waitForPromises(timeout: 10))
        XCTAssertEqual(self.feedViewModel?.feedList.count, 1)
        XCTAssertFalse(self.feedViewModel?.isError ?? false)
    }

}

class MockGetFeedListUseCase: GetFeedListUseCase {
    func execute() -> Promise<Array<Feed>> {
        return Promise { (resolve, reject) in
            resolve([Feed(id: 1, title: "Mock title 1", desc: "Mock desc 1")])
        }
    }
}
