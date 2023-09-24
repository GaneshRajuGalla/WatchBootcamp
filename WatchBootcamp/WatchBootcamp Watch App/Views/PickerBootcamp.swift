//
//  PickerBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 23/09/23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    // MARK: - Properties
    
    @State private var selectedColor:UIColor = UIColor.red
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20){
            Picker("Select Color", selection: $selectedColor) {
                Text("Red")
                    .tag(UIColor.red)
                Text("Green")
                    .tag(UIColor.green)
                Text("Blue")
                    .tag(UIColor.blue)
            }
            
            Form{
                Picker("Select Colot", selection: $selectedColor) {
                    Text("Red")
                        .tag(UIColor.red)
                    Text("Green")
                        .tag(UIColor.green)
                    Text("Blue")
                        .tag(UIColor.blue)
                }
            }
        }
    }
}

#Preview {
    PickerBootcamp()
}
