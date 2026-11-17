//
//  ContentView.swift
//  Ajay Chagan
//  Nov 16 2026
//  Assignment 13
// View

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewModel: FlowerMemoryGame
    
    private var matchedPairs: Int {
            viewModel.cards.filter { $0.isMatched }.count / 2
        }
    
    var body: some View {
        VStack {
        ScrollView {
            Text("Flower Game").font(.largeTitle).foregroundColor(.blue).bold()
            
            ProgressView(value: Double(matchedPairs), total: Double(viewModel.pairs))
                            .tint(.green)
                            .padding(.horizontal)
            
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
