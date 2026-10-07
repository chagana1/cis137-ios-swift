/*
Assignment #7
Ajay Chagan
Oct 06 2026
 
Content View
*/

import SwiftUI

extension VerticalAlignment {
    enum LowerCenter: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let LowerCenterGuide = VerticalAlignment(LowerCenter.self)
}

struct ContentView: View {
    var body: some View {
        VStack {
            
            ZStack (alignment: Alignment(horizontal: .center, vertical: .LowerCenterGuide)){
                
                MapView()
                    .frame(height: 700)
                    .opacity(0.5)
                
                
                VStack (alignment: .center, spacing: 25) {
                    Text("Hello, my name is Ajay Chagan")
                        .font(.title.bold().scaled(by: 1.5))
                        .fontDesign(.serif)
                        .foregroundStyle(.black.shadow(.drop(color: .black.opacity(0.3), radius: 10, x: 0, y: 3)))
                        .alignmentGuide(.LowerCenterGuide) {d in
                            d[VerticalAlignment.center]}
                    
                    CircleImage()
                    Text("I like to explore the Bay Area and find new places")
                        .font(.largeTitle)
                }
               
                    }
            .alignmentGuide(.LowerCenterGuide) { d in d[.top]
            }
            
           
             
            
//Future Navigation Pane
            Spacer()
            Text("Future Navigation Bar")
        }
    }
}

#Preview {
    ContentView()
}
