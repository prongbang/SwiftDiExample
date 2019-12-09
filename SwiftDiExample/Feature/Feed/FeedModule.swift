//
//  FeedModule.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import DIKit

public extension DependencyContainer {
    static var feedModule = module {
        single { FeedLocalDataSource() as FeedDataSource }
        factory { DefaultFeedRepository() as FeedRepository }
        factory { DefaultGetFeedListUseCase() as GetFeedListUseCase }
    }
}
