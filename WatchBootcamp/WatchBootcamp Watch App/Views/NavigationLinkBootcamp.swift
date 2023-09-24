//
//  NavigationLinkBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct NavigationLinkBootcamp: View {
    
    // MARK: - Properties
    
    private let toys:[String] = ["🎮", "🧸", "🚗", "🎨"]
    
    
    // MARK: - Body
    
    var body: some View {
        List{
            ForEach(toys,id: \.self) { toy in
                NavigationLink(destination: Text(toy)) {
                    Text(toy)
                }
            }
        }
    }
}

#Preview {
    NavigationLinkBootcamp()
}
