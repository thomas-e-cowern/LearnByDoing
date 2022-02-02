//
//  CardView.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/2/22.
//

import SwiftUI

// MARK: Card
struct CardView: View {
    var body: some View {
        ZStack {
            Text("CARD")
        }
        .frame(width: 335, height: 545)
        .background(Color.pink)
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView()
        }
    }
}
