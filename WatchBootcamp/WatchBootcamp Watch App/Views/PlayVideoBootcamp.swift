//
//  PlayVideoBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI
import AVKit
import AVFoundation


struct PlayVideoBootcamp: View {
    
    // MARK: - Properties
    
    private let path = Bundle.main.url(forResource: "water", withExtension: "mp4")
    
    
    // MARK: - Body
    
    var body: some View {
        let player  = AVPlayer(url: path!)
        VideoPlayer(player: player)
    }
}

#Preview {
    PlayVideoBootcamp()
}
