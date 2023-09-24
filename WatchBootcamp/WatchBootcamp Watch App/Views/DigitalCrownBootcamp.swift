//
//  DigitalCrownBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct DigitalCrownBootcamp: View {
    
    // MARK: - Properties
    
    @State private var scrollAmount = 0.0
    
    // MARK: - Body
    
    var body: some View {
        Text("Scroll: \(scrollAmount)")
            .focusable(true)
            .digitalCrownRotation($scrollAmount)
    }
}

#Preview {
    DigitalCrownBootcamp()
}

