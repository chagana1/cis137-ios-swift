//
//  ContentView.swift
//  Ajay Chagan
//  Nov 9 2026
//  Lab 3
// View 

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewModel: FlowerMemoryGame
    
    var body: some View {
        ScrollView {
            Text("Flower Game").font(.largeTitle).foregroundColor(.blue).bold()
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 1)]) {
                ForEach (viewModel.cards) {
                card in FlowerCard(card: card).aspectRatio(1, contentMode: .fit)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                viewModel.choose(card: card)
                            }
                        }
                }
            }
        }
        
        Button(action: {
                    withAnimation {
                    viewModel.newGame()
                        }
                    }) {
                        Text("New Game")
                            .font(.title2)
                            .bold()
                            .padding(.horizontal, 20)
                            .padding(.vertical, 20)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
        
    }
    
}

struct FlowerCard: View {
    var card: MemoryGame.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 10)
            if card.isFaceUp {
                shape.stroke(lineWidth: 3).foregroundColor(.blue)
                Image(card.content).resizable().scaledToFit().padding()
            }
            else {
                shape.fill().foregroundColor(.blue)
            }
        }
        .rotation3DEffect(.degrees(card.isFaceUp ? 0 : 180), axis: (x: 0, y: 1, z: 0))
    }
}


#Preview {
    ContentView(viewModel: FlowerMemoryGame())
}
