//
//  CardView.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/2/22.
//

import SwiftUI


struct CardView: View {
    
    // MARK:  Properties
    var card: Card
    @State private var fadeIn: Bool = false
    @State private var fadeDownward: Bool = false
    @State private var slideIn: Bool = false
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    // MARK: Card
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text(card.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .opacity(fadeDownward ? 1.0 : 0.0)
                Text(card.headline)
                    .font(.footnote)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
                    .italic()
                    
            }
            .offset(y: -218)
            
            Button(action: {
                print(card.message)
                
                playSound(sound: "sound-chime", type: "mp3")
                
                self.hapticImpact.impactOccurred()
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: slideIn ? 210 : 300)
            
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient:  Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.fadeDownward.toggle()
            }
            withAnimation(.linear(duration: 1.0)) {
                self.slideIn.toggle()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[5])
            .previewLayout(.sizeThatFits)
    }
}
