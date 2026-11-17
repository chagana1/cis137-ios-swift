//
//  Ajay Chagan
//  Nov 16 2026
//  Assignment 13
//

import SwiftUI

@main
struct com_Ajay_Chagan_Lab3_MemoryGameApp: App {
    @StateObject var game = FlowerMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
