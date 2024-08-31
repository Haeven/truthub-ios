//
//  VideoDetailsView.swift
//  Trutube
//
//  Created by Haeven Kelley on 8/31/24.
//
import SwiftUI
struct VideoDetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Video Title")
                .font(.headline)
                .padding(.top)

            Text("Video description goes here. This is some placeholder text for the video description.")
                .font(.subheadline)

            HStack {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "hand.thumbsup")
                        Text("Like")
                    }
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "hand.thumbsdown")
                        Text("Dislike")
                    }
                }

                Spacer()
            }
            .padding(.top)
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}
