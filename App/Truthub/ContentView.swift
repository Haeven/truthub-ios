import SwiftUI

struct ContentView: View {
    @State private var playerHeight: CGFloat = UIScreen.main.bounds.height / 3
    @State private var playerMinimized: Bool = false
    @State private var dragOffset: CGSize = .zero

    var body: some View {
        VStack(spacing: 0) {
            VideoPlayerView(playerHeight: $playerHeight, playerMinimized: $playerMinimized, dragOffset: $dragOffset)
                .frame(height: playerHeight)
                .background(Color.black)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            // Only drag downwards
                            if gesture.translation.height > 0 {
                                dragOffset = gesture.translation
                                playerHeight = UIScreen.main.bounds.height / 3 - gesture.translation.height
                            }
                        }
                        .onEnded { _ in
                            if playerHeight < UIScreen.main.bounds.height / 6 {
                                withAnimation {
                                    playerMinimized = true
                                    playerHeight = 80 // minimized height
                                }
                            } else {
                                withAnimation {
                                    dragOffset = .zero
                                    playerHeight = UIScreen.main.bounds.height / 3
                                }
                            }
                        }
                )

            if !playerMinimized {
                VideoDetailsView()
            } else {
                VideoFeedView()
            }
        }
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
