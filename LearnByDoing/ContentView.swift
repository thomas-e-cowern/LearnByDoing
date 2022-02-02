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
        CardView()
    }
}

// MARK:  Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
