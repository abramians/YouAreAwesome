//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Armen Melik-Abramians on 3/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var message2 = ""
    @State private var image = ""
    @State private var changeImage = true
    var body: some View {
        
        VStack {
            Spacer()
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            Spacer()
            
            
            Button("Press Me") {
                let message1 = "You are Awesaome!"
                let message2 = "You are Great!"
                let image1 = "sun.max.fill"
                let image2 = "hand.thumbsup"
                
                if changeImage == true {
                    image = image1
                    message = message1
                    changeImage = false
                } else {
                    image = image2
                    message = message2
                    changeImage = true
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
