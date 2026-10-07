/*
Assignment #7
Ajay Chagan
OCT 06 2026
 
Circle Image 
*/

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Image")
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
