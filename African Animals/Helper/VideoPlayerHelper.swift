//
//  VideoPlayerHelper.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/05.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if(Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil){
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    
    return videoPlayer!
}
