/*
Lab#2
Ajay Chagan
Oct 18 2026
*/

import SwiftUI

//Using Flower images from example

let images = ["flower1", "flower2",
              "flower3", "flower4", "flower5",
              "flower6", "flower7", "flower8",
              "flower9", "flower10", "flower11",
              "flower12"]

//Created a structural view with scroll, LazyVGrid layout
struct ContentView: View {
    var body: some View {
        ScrollView {
            Text("Flip Game")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 1)]) {
                ForEach(images, id: \.self) { im in
                    FlowerCards(content: im)
                        .aspectRatio(1, contentMode: .fit)
                }
            }
        }
    }
}

//State property isFaceUp with onTapGesture

struct FlowerCards: View {
    var content: String
    
    @State private var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 3)
                .foregroundColor(.blue)
            
            if isFaceUp {
                Image(content)
                    .resizable()
                    .scaledToFit()
                    .padding()
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
            }
        }
        .padding(.horizontal)
        .onTapGesture {
                isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}

