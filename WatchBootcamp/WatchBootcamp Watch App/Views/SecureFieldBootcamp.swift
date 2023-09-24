//
//  SecureFieldBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI

struct SecureFieldBootcamp: View {
    
    // MARK: - Properties
    
    @State private var password:String = ""
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 20){
            Text("Password")
            SecureField("Enter Password", text: $password)
        }
    }
}

#Preview {
    SecureFieldBootcamp()
}
