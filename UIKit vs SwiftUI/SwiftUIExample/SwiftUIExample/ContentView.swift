//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Vasily Bodnarchuk on 10.07.2022.
//

import SwiftUI

struct ContentView: View {
    private let numberOfCells: Int = 100
    var body: some View {
        List {
            ForEach(0..<numberOfCells) { row in
                Text("text \(row)")
            }
        }.listStyle(PlainListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
