//
//  StepperBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    // MARK: - Properties
    
    @State private var stepperValue:Int = 0
    
    // MARK: - Body
    
    var body: some View {
        Stepper(value: $stepperValue) {
            Text("\(stepperValue)")
        }
    }
}

#Preview {
    StepperBootcamp()
}
