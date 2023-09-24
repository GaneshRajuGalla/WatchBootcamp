//
//  PlayAudioBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI
import AVFoundation
import WatchKit

struct PlayAudioBootcamp: View {
    
    // MARK: - Properties
    
    @State private var audioPlayer: AVAudioPlayer!
    
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            playSound(fileName: "Jeena.mp3")
        }, label: {
            Text("Play")
        })
    }
}

#Preview {
    PlayAudioBootcamp()
}


extension PlayAudioBootcamp{
    private func playSound(fileName:String){
        guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else{
            fatalError("not able to find the sound \(fileName)")
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        }catch{
            print(error.localizedDescription)
        }
        audioPlayer.play()
    }
}
