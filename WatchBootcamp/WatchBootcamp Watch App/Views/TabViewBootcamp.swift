//
//  TabViewBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView {
            Text("Tab Content 1")
                . tabItem {
                    Text("Tab Item 1")
                        .tag(1)
                }
            
            Text("Tab Content 2")
                .tabItem {
                    Text("Tab Item 2")
                        .tag(2)
                }
        }
    }
}

#Preview {
    TabViewBootcamp()
}
