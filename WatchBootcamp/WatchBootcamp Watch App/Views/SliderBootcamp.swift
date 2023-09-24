//
//  SliderBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    // MARK: - Properties
    
    @State private var normalSliderValue:Double = 0.0
    @State private var stepSliderValue:Double = 0.0
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 5){
            Text("\(stepSliderValue)")
            Slider(value: $stepSliderValue, in: 0...1,step: 0.1)
            Spacer()
            Text("\(normalSliderValue)")
            Slider(value: $normalSliderValue, in: 0...1)
        }
    }
}

#Preview {
    SliderBootcamp()
}
