//
//  ListSeparatorStyleNoneModifier.swift
//  SwiftDiExample
//
//  Created by Endtry on 11/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//
import SwiftUI
import Combine

public struct ListSeparatorStyleNoneModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content.onAppear {
            UITableView.appearance().separatorStyle = .none
        }.onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }
    }
}
