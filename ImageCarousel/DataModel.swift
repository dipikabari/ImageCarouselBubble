//
//  DataModel.swift
//  ImageCarousel
//
//  Created by Dipika Bari on 24/04/2025.
//

import Foundation

struct Bubble: Identifiable {
    let id = UUID()
    let text: String
    let position: CGPoint
}

struct CarouselItem: Identifiable {
    let id = UUID()
    let imageName: String
    let bubbles: [Bubble]
}
