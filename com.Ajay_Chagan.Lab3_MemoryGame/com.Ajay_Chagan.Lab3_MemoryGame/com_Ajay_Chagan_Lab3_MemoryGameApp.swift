//
//  Ajay Chagan
//  Nov 9 2026
//  Lab 3
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
