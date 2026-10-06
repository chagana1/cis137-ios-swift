//
// Assignment 6
// Ajay Chagan
// 10/05/2026

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("map-of-australia")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
    
            VStack(alignment: .center, spacing: 5) {
                Spacer()
                HStack {
                    Image("Koala1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    Image("Koala2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    Image("Koala3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                Spacer()
                HStack {
                    Image("Koala4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    Image("Koala5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    Image("Koala6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                }
                Spacer()
                HStack {
                    Image("Koala7")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    Image("Koala8")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    Image("Koala9")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                }
                Spacer()
              
            }
        }
    }
}

#Preview {
    ContentView()
}
