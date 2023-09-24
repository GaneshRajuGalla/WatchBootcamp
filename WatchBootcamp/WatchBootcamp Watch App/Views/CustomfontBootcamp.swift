//
//  CustomfontBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct CustomfontBootcamp: View {
    var body: some View {
        Text("24/09/2023")
            .font(.custom("DS-Digital",size: 30))
            .foregroundStyle(.orange)
    }
}

#Preview {
    CustomfontBootcamp()
}
