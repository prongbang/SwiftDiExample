//
//  FeedLocalDataSource.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import DIKit
import Promises

class FeedLocalDataSource: FeedDataSource {
    
    func getFeedList() -> Promise<Array<Feed>> {
        return Promise { (resolve, reject) in
            
            var feedList: [Feed] = []
            for i in 1...20 {
                feedList.append(Feed(id: i, title: "Title \(i)", desc: "Desc \(i)"))
            }
            
            resolve(feedList)
        }
    }
}
