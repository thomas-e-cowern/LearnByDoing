//
//  CardView.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/2/22.
//

import SwiftUI

// MARK: Card
struct CardView: View {
    
    // MARK:  Properties
    
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    
    var body: some View {
        ZStack {
            Text("CARD")
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient:  Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
