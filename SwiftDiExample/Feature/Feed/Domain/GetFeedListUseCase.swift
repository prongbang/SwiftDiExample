//
//  GetFeedListUseCase.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import DIKit
import Promises

protocol GetFeedListUseCase {
    func execute() -> Promise<Array<Feed>>
}

class DefaultGetFeedListUseCase: GetFeedListUseCase {
    
    private let feedRepository: FeedRepository
    
    init(feedRepository: FeedRepository = resolve()) {
        self.feedRepository = feedRepository
    }
    
    func execute() -> Promise<Array<Feed>> {
        return self.feedRepository.getFeedList()
    }
}
