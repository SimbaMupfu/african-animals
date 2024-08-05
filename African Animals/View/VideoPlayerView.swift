//
//  VideoPlayerView.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/05.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var selectedVideo: String
    var videoTitle: String
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: selectedVideo, fileFormat: "mp4")){
//                Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
            , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(selectedVideo: "lion", videoTitle: "Lion")
    }
}
