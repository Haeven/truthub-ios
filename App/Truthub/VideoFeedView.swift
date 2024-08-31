//
//  VideoFeedView.swift
//  Trutube
//
//  Created by Haeven Kelley on 8/31/24.
//
import SwiftUI

struct VideoFeedView: View {
    // Sample data for the video feed
    let videos = [
        Video(title: "Sample Video 1", author: "Author 1", description: "This is a description of video 1.", thumbnailURL: URL(string: "https://example.com/thumbnail1.jpg")!, videoURL: URL(string: "https://example.com/video1.mp4")!, likes: 100, dislikes: 10),
        Video(title: "Sample Video 2", author: "Author 2", description: "This is a description of video 2.", thumbnailURL: URL(string: "https://example.com/thumbnail2.jpg")!, videoURL: URL(string: "https://example.com/video2.mp4")!, likes: 150, dislikes: 20),
        // Add more sample videos as needed
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(videos, id: \.id) { video in
                    VideoCardView(video: video)
                        .padding(.vertical, 5)
                }
            }
        }
    }
}

struct VideoCardView: View {
    let video: Video

    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(Color.gray)
                .frame(height: 200)

            Text(video.title)
                .font(.headline)
                .padding(.horizontal)

            Text(video.author)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

