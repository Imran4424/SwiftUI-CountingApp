//
//  ContentView.swift
//  CountingApp
//
//  Created by Shah Md Imran Hossain on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    // by default struct property in not editable
    // @State is making the property editable
    // @State variable also updates the views which are using them
    // @State is designed for simple properties which stays in one view
    // always make sure to use private for consistency
    @State private var tapCount = 0
    @State private var name = ""

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Form {
                // $ - working as a bidirectional biniding operator
                // 1 - read the value from name
                // 2 - also update name while user the name TextField
                TextField("Enter your name", text: $name)
                // here is no $ sign
                // we don't want two way binding here
                // 1 - just read the value
                // text will not change here
                Text("Your name is \(name)")
            }
            
            Spacer()
            Spacer()
            Spacer()
            
            Button("Tap Count: \(tapCount)") {
                tapCount += 1
            }
            .font(.system(size: 32))
            
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
