//
//  ContentView.swift
//  ImageCarousel
//
//  Created by Dipika Bari on 24/04/2025.
//

import SwiftUI

struct ContentView: View {
    let items: [CarouselItem]
    
    var body: some View {
        TabView {
            ForEach(items) { item in
                BubbleImageView(item: item)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

#Preview {
    let sampleItems = [
        CarouselItem(imageName: "image1",
        bubbles:  [
            Bubble(text: "Top Left", position: CGPoint(x: 80, y: 240)),
            Bubble(text: "Bottom Right", position: CGPoint(x: 300, y: 500))
        ]),
        CarouselItem(imageName: "image2",
        bubbles:  [
            Bubble(text: "Center", position: CGPoint(x: 250, y: 350)),
            Bubble(text: "Another Point", position: CGPoint(x: 150, y: 200)),
            Bubble(text: "Bottom Left", position: CGPoint(x: 140, y: 550))
        ])
    ]
    
    ContentView(items: sampleItems)
}
