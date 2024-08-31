//
//  VideoPlayerView.swift
//  Trutube
//
//  Created by Haeven Kelley on 8/31/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @Binding var playerHeight: CGFloat
    @Binding var playerMinimized: Bool
    @Binding var dragOffset: CGSize

    var body: some View {
        ZStack(alignment: .top) {
            VideoPlayer(player: AVPlayer(url: URL(string: "https://path/to/your/video.mp4")!))
                .frame(height: playerHeight)
                .offset(y: dragOffset.height)
                .clipped()
            
            if playerMinimized {
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            playerMinimized = false
                            playerHeight = UIScreen.main.bounds.height / 3
                        }
                    }) {
                        Text("Expand")
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                    }
                    .padding()
                }
            }
        }
    }
}
