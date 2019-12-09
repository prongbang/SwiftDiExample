//
//  FeedDataSource.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Promises

protocol FeedDataSource {
    func getFeedList() -> Promise<Array<Feed>>
}
