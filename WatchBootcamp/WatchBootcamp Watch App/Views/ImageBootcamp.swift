//
//  ImageBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("Ganesh")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
    }
}

#Preview {
    ImageBootcamp()
}
