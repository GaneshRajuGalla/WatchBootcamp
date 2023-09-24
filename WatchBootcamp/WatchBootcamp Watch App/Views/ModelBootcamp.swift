//
//  ModelBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct ModelBootcamp: View {
    
    // MARK: - Properties
    
    @State private var isPresented:Bool = false
    
    // MARK: - Body
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            Text("Show Model")
        }
        .sheet(isPresented: $isPresented, content: {
            Text("Model")
        })

    }
}

#Preview {
    ModelBootcamp()
}
