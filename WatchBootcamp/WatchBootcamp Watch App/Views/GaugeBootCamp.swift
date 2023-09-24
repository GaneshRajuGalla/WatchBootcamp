//
//  GaugeBootCamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct GaugeBootCamp: View {
    
    // MARK: - Properties
    @State private var currentValue:Double = 0.0
    private let minValue:Double = 0.0
    private let maxValue:Double = 100.0
    @State private var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    // MARK: - Body
    
    var body: some View {
        Gauge(
            value: currentValue,
            in: minValue...maxValue,
            label: {
                Text("GaugeBootcamp")
            },
            currentValueLabel: { Text("\(Int(currentValue))") },
            minimumValueLabel: { Text("\(Int(minValue))") },
            maximumValueLabel: { Text("\(Int(maxValue))") }
        )
        .onReceive(timer){ _ in
            if currentValue < 100{
                currentValue += 1
            }
        }
    }
}

#Preview {
    GaugeBootCamp()
}
