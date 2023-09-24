//
//  ButtonBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    // MARK: - Properties
    
    @State private var counter:Int = 0
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20){
            Text("\(counter)")
            Button {
                counter += 1
            } label: {
                Text("Increment")
            }
        }
    }
}

#Preview {
    ButtonBootcamp()
}
