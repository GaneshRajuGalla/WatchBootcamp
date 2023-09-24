//
//  TapLocationBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct TapLocationBootcamp: View {
    
    // MARK: - Properties
    
    @State private var tapLocation:CGPoint = .zero
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack{
            Color.orange
            .ignoresSafeArea()
            .onTapGesture { location in
                tapLocation = location
            }
            Text("X: \(Int(tapLocation.x)), Y: \(Int(tapLocation.y))")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    TapLocationBootcamp()
}
