//
//  CardView.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/2/22.
//

import SwiftUI


struct CardView: View {
    
    // MARK:  Properties
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    
    // MARK: Card
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Text("Better Apps, Less Code")
            }
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
