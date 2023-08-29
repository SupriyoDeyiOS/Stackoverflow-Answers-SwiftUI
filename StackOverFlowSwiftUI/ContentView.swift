//
//  ContentView.swift
//  StackOverFlowSwiftUI
//
//  Created by Supriyo Dey on 29/08/23.
//


/* answer: https://stackoverflow.com/questions/76999149/swiftui-tap-inside-list-doesnt-trigger-selection/76999493#76999493 */


import SwiftUI

struct ContentView: View {
    let cities = ["kolkata", "Delhi"]
    
    
    var body: some View {
        List(cities, id: \.self) { city in
            VStack {
                Text(city)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .background(Color.clear)    //just add this line
            .onTapGesture {
                print("tapped")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
