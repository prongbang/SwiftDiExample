//
//  CardView.swift
//  SwiftDiExample
//
//  Created by Endtry on 10/12/2562 BE.
//  Copyright © 2562 Endtry. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var feed: Feed
    
    var body: some View {
        VStack {
            ImageView(withURL: feed.image)
                .aspectRatio(contentMode: .fit)
         
            HStack {
                VStack(alignment: .leading) {
                    Text(feed.category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(feed.title)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(feed.author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
         
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(feed: Feed(id: 1, title: "มาใช้ Wire เพื่อช่วยทำ Dependency Injection กันเถอะ", desc: "", image: "https://prongbang.github.io/assets/images/golang/9.png", category: "Golang", author: "prongbang"))
    }
}
