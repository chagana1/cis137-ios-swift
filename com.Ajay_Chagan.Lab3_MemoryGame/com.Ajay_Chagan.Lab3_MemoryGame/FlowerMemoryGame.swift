//
//  FlowerMemoryGame.swift
//  Ajay Chagan
//  Nov 9 2026
//  Lab 3
// View Model


import SwiftUI
import Combine

class FlowerMemoryGame: ObservableObject {
    @Published private var model: MemoryGame
    
    // Part of the New Game button private static func
    private static func createMemoryGame() -> MemoryGame {
        let images = [
            "flower1", "flower2", "flower3", "flower4",
            "flower5", "flower6", "flower7", "flower8",
            "flower9", "flower10", "flower11", "flower12"
        ]
        
        return MemoryGame(numberOfPairsOfCards: 6) { index in
            images[index]
        }
    }
    
    init() {
        self.model = FlowerMemoryGame.createMemoryGame()
    }
    
    var cards: Array<MemoryGame.Card> {
        model.cards
    }
    
    var pairs: Int {
        model.numberOfPairs
    }
    
    func choose(card: MemoryGame.Card) {
        model.chooseCard(card: card)
    }
    
    // New Game Button 
    func newGame() {
        model = FlowerMemoryGame.createMemoryGame()
    }
}
