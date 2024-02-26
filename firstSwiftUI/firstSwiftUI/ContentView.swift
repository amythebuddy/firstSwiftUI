//
//  ContentView.swift
//  PhoneApp
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter")
            Text("\(count)")
                .padding(.vertical, 30)
            HStack {
                Button("Increment", action: increaseCounter)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
                Button("Decrement", action: decreaseCounter)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    func increaseCounter(){
        count += 1
        if count > 150 {
            count = 150
        }
    }
    func decreaseCounter(){
        count -= 1
        if count < 0 {
            count = 0
        }
    }
}

#Preview {
    ContentView()
}
