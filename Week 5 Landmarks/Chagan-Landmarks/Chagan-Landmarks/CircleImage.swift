/*
Assignment #5
Ajay Chagan
Sep 18 2026
 
Circle Image 
*/

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Bitmoji like photo of me for CSM")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}
    

#Preview {
    CircleImage()
}
