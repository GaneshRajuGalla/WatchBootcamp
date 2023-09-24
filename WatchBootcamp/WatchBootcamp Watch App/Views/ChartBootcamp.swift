//
//  ChartBootcamp.swift
//  WatchBootcamp Watch App
//
//  Created by Ganesh on 24/09/23.
//

import SwiftUI
import Charts

struct ChartBootcamp: View {
    
    // MARK: - Properties
    private let toys:[Toy] = Toy.getData()
    
    // MARK: - Body
    
    var body: some View {
        Chart{
            ForEach(toys){ toy in
                BarMark(
                    x:.value("name", toy.name),
                    y: .value("quantity", toy.quantity),
                    width: 10
                )
                .foregroundStyle(toy.color)
            }
        }
    }
}

#Preview {
    ChartBootcamp()
}


// Model

struct Toy: Identifiable{
    let name:String
    let quantity:Int
    let color:Color
    var id = UUID()
    
    init(name: String, quantity: Int, color: Color) {
        self.name = name
        self.quantity = quantity
        self.color = color
    }
    
    static func getData() -> [Toy]{
        return [
            .init(name: "🎮", quantity: 2, color: .red),
            .init(name: "🧸", quantity: 7, color: .green),
            .init(name: "🚗", quantity: 3, color: .blue),
            .init(name: "🎨", quantity: 5,color: .orange)
        ]
    }
}

