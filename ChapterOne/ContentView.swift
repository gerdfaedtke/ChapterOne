//
//  ContentView.swift
//  ChapterOne
//
//  Created by Gerd Faedtke on 15.01.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1

    var body: some View {
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
                        
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You are Awesome!",
                                "You are Great!",
                                "Fabulous? That's you",
                                "That's fantastic",
                                "Absolutly",
                                "That's it what we need"]
                
                // generate a random messageNumber to use as an index
                // if message number == lastMessageNumber {
                //   keep generaating a new random messageNumber
                //   until you get a messageNumber != last MessageNumber
                // set messageNumber to [messageNumber]
                // update the last MessageNumber with messageNumber
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
 //             imageName = "image\(Int.random(in: 0...9))"
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...9)
                }
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
            }
        }
        .buttonStyle(.borderedProminent)
    }
}


#Preview {
    ContentView()
}
