//
//  BubbleImageView.swift
//  ImageCarousel
//
//  Created by Dipika Bari on 24/04/2025.
//

import SwiftUI

struct BubbleImageView: View {
    let item: CarouselItem
    
    var body: some View {
        ZStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(8)
            
            ForEach(item.bubbles) { bubble in
                Text(bubble.text)
                    .padding(8)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .bold))
                    .clipShape(Capsule())
                    .position(bubble.position)
            }
        }
    }
}

#Preview {
    let previewItem = CarouselItem(
        imageName: "image1",
        bubbles: [
            Bubble(text: "Left top", position: CGPoint(x: 60, y: 240)),
            Bubble(text: "Right top", position: CGPoint(x: 350, y: 250)),
            Bubble(text: "Right Bottom", position: CGPoint(x: 280, y: 530))
        ])
    
    BubbleImageView(item: previewItem)
}
