//
//  FeedViewModel.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import DIKit
import Combine

class FeedViewModel: ObservableObject {
    
    @Published var feedList = [Feed]()
    @Published var isLoading = false
    @Published var isError = false
    
    private let getFeedListUseCase: GetFeedListUseCase
    
    init(getFeedListUseCase: GetFeedListUseCase = resolve()) {
        self.getFeedListUseCase = getFeedListUseCase
    }
    
    func getFeedList() {
        self.isLoading = true
        self.getFeedListUseCase.execute().then { feedList in
            self.feedList = feedList
            self.isLoading = false
        }.catch { (error) in
            self.isError = true
            self.isLoading = false
        }
    }
}
