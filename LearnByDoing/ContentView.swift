//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    
    // Content
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 5) { item in
                    CardView()
                }
            }
            .padding(20)
        }
    }
}

// MARK:  Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
