//
//  ContentView.swift
//  PhoneApp
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0 // declare and initialize count
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter")
            Text("\(count)") // show the counter
                .padding(.vertical, 30) // create vertical space between the button and the text
            HStack {
                Button("Increment", action: increaseCounter) //point to the function
                    .padding(10) // create space between the text and border
                    .background(Color.blue) // create blue background
                    .foregroundColor(.white) // white text
                    .cornerRadius(10) // round the corner of the box
                
                Button("Decrement", action: decreaseCounter) // point to the function
                    .padding(10) // create space between the text and border
                    .background(Color.blue) // create blue background
                    .foregroundColor(.white) // white text
                    .cornerRadius(10) // round the corner of the box
            }
        }
        .padding()
    }
    func increaseCounter(){
        count += 1 // count increases by 1
        //if count is larger than 50 then count stops
        if count > 50 {
            count = 50
        }
    }
    func decreaseCounter(){
        count -= 1 // count decreases by 1
        //if count is smaller than 0 then count stops
        if count < 0 {
            count = 0
        }
    }
}

#Preview {
    ContentView()
}
