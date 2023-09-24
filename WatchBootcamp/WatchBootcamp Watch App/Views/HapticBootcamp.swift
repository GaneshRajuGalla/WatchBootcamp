//
//  HapticBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct HapticBootcamp: View {
    
    // MARK: - Properties
    
    private let haptics: [String] = [
        "start",
        "stop",
        "success",
        "failure",
        "click",
        "notification",
        "directionUp",
        "directionDown"
    ]
    
    // MARK: - Body
    var body: some View {
        List{
            ForEach(0..<haptics.count, id: \.self) { index in
                Button(action: {
                    hapticTap(type: WKHapticType(rawValue: index))
                }, label: {
                    Text(haptics[index])
                })
                
            }
        }
    }
}

#Preview {
    HapticBootcamp()
}


extension HapticBootcamp{
    private func hapticTap(type: WKHapticType?){
        guard let type = type else {return}
        WKInterfaceDevice.current().play(type)
    }
}
