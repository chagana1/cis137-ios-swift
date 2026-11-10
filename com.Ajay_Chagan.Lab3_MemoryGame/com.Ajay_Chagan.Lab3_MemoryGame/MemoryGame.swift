//
//  MemoryGame.swift
//  Ajay Chagan
//  Nov 9 2026
//  Lab 3
// Model

import Foundation

struct MemoryGame {
    private(set) var cards: Array<Card>
    private(set) var numberOfPairs: Int
    private var indexOfOneAndOnlyFaceUpCard: Int?
    
    struct Card: Identifiable {
        var content: String
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var id: Int
    }
    
    mutating func chooseCard(card: Card) {
            // Only allow choosing cards that are face-down and not yet matched
            if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
               !cards[chosenIndex].isFaceUp,
               !cards[chosenIndex].isMatched {
                
                // One card is already face-up, checking for a match
                if let matchIndex = indexOfOneAndOnlyFaceUpCard {
                    if cards[chosenIndex].content == cards[matchIndex].content {
                        // Match found! Keep both face-up and mark as matched
                        cards[chosenIndex].isMatched = true
                        cards[matchIndex].isMatched = true
                    }
                    cards[chosenIndex].isFaceUp = true
                    indexOfOneAndOnlyFaceUpCard = nil
                }
                // No cards are face-up, or 2 cards were already flipped
                else {
                    // Flip all unmatched cards face-down
                    for index in cards.indices {
                        if !cards[index].isMatched {
                            cards[index].isFaceUp = false
                        }
                    }
                    cards[chosenIndex].isFaceUp = true
                    indexOfOneAndOnlyFaceUpCard = chosenIndex
                }
            }
        }
    
    
// Choose card function that toggles turned off
//    mutating func chooseCard(card: Card) {
//        for index in cards.indices {
//            if cards[index].id == card.id {
//                cards[index].isFaceUp.toggle()
//            }
//        }
//    }

// Added the second card to ensure 6 pairs of cards
    init(numberOfPairsOfCards: Int, contentFactory: (Int) -> String) {
        cards = []
        numberOfPairs = numberOfPairsOfCards
        
        for index in 0..<numberOfPairsOfCards {
            let content = contentFactory(index)
            cards.append(Card(content: content, id: index * 2))
            cards.append(Card(content: content, id: index * 2 + 1))
        }
        cards.shuffle()
    }
    
}
