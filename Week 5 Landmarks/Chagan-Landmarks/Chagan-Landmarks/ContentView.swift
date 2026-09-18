/*
Assignment #5
Ajay Chagan
Sep 18 2026
 
Content View 
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ZStack {
                
                MapView()
                    .frame(height: 700)
                    .opacity(0.7)
                
                
                VStack(alignment: .center) {
                    Text("Hello, my name is Ajay Chagan")
                        .font(.title.bold().scaled(by: 1.5))
                        .fontDesign(.serif)
                        .foregroundStyle(.red.shadow(.drop(color: .black.opacity(0.3), radius: 10, x: 0, y: 3)))
                    
                }
                .padding(.bottom, 250)
                
            }
            
            CircleImage()
                .offset(y: -400)
                .padding(.bottom, -300)
            
//Future Navigation Pane
            Spacer()
            Text("Future Navigation Pane")
        }
    }
}

#Preview {
    ContentView()
}
