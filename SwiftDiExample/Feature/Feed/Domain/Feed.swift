//
//  Feed.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//
import Foundation

// MARK: - Feed
struct Feed: Codable, Identifiable {
    let id: Int
    let title: String
    let desc: String
}
