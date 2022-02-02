//
//  LaunchScreen.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/2/22.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Image("LaunchScreen")
            Image("logo-swift-outlined")
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
