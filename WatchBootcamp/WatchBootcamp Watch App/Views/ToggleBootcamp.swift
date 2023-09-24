//
//  ToggleBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    // MARK: - Properties
    
    @State private var isOn:Bool = false
    
    // MARK: - Body
    
    var body: some View {
        Toggle("Toggle", isOn: $isOn)
            .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
