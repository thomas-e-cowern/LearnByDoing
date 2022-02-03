//
//  CardModel.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/3/22.
//

import SwiftUI

// MARK:  Card Model
struct Card: Identifiable {
    var id: UUID
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
