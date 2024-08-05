//
//  VideoListView.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/02.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { currentVideo in
                    NavigationLink(destination: VideoPlayerView(selectedVideo: currentVideo.id, videoTitle: currentVideo.name)) {
                        VideoListItemView(video: currentVideo)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar(){
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
