//
//  View+Extension.swift
//  SwiftDiExample
//
//  Created by Endtry on 11/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import SwiftUI

extension View {
    public func listSeparatorStyleNone() -> some View {
        modifier(ListSeparatorStyleNoneModifier())
    }
}
