//
//  AlertBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    // MARK: - Properties
    
    @State private var isPresented:Bool = false
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }, label: {
            Text("Show Alert")
        })
        .alert("This is Alert", isPresented: $isPresented){
            Button("Ok",role: .cancel){}
        }
    }
}

#Preview {
    AlertBootcamp()
}
