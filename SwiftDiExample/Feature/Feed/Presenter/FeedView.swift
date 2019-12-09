//
//  FeedView.swift
//  SwiftDiExample
//
//  Created by Endtry on 9/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct FeedView: View {
    
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationView {
            List(self.viewModel.feedList) { item in
                VStack {
                    Text(item.title)
                    Text(item.desc)
                }
            }
            .navigationBarTitle("Feed")
        }
        .onAppear {
            self.viewModel.getFeedList()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
