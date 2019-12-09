//
//  FeedRepository.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import DIKit
import Promises

protocol FeedRepository {
    func getFeedList() -> Promise<Array<Feed>>
}

class DefaultFeedRepository: FeedRepository {
    
    private let feedLocalDataSource: FeedDataSource

    init(feedLocalDataSource: FeedDataSource = resolve()) {
        self.feedLocalDataSource = feedLocalDataSource
    }
    
    func getFeedList() -> Promise<Array<Feed>> {
        return self.feedLocalDataSource.getFeedList()
    }
    
}
