//
//  LabledContentBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct LabledContentBootcamp: View {
    var body: some View {
        LabeledContent("Name") {
            Text("Ganesh")
        }
    }
}

#Preview {
    LabledContentBootcamp()
}
