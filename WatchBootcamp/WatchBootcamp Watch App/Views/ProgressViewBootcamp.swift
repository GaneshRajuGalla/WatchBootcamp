//
//  ProgressViewBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct ProgressViewBootcamp: View {
    
    // MARK: - Properties
    
    @State private var progressValue:Double = 0.0
    @State private var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20){
            ProgressView()
            ProgressView("\(Int(progressValue))", value: progressValue,total: 100)
                .progressViewStyle(.circular)
            ProgressView("\(Int(progressValue))", value: progressValue,total: 100)
        }
        .onReceive(timer){ _ in
            if progressValue < 100{
                progressValue += 1
            }
        }
    }
}

#Preview {
    ProgressViewBootcamp()
}
