//
//  TextFieldBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    // MARK: - Properties
    
    @State private var name:String = ""
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20){
            Text("TextField")
            TextField("Enter Name", text: $name)
        }
    }
}

#Preview {
    TextFieldBootcamp()
}
