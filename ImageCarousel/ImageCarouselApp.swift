//
//  ImageCarouselApp.swift
//  ImageCarousel
//
//  Created by Dipika Bari on 24/04/2025.
//

import SwiftUI

@main
struct ImageCarouselApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(items: [
                    CarouselItem(
                        imageName: "image1",
                        bubbles: [
                                Bubble(text: "Top Left", position: CGPoint(x: 60, y: 40)),
                                Bubble(text: "Center", position: CGPoint(x: 150, y: 200))
                        ]),
                    CarouselItem(
                        imageName: "image2",
                        bubbles: [
                                Bubble(text: "Bottom Right", position: CGPoint(x: 250, y: 350)),
                                Bubble(text: "Another Point", position: CGPoint(x: 100, y: 100))
                            ])
                    ])
        }
    }
}
