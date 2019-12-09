//
//  ContributorModule.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import DIKit

public extension DependencyContainer {
    static var contributorModule = modules {
        [
            .feedModule
        ]
    }
}
