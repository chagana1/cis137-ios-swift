/*
Assignment # 8
Ajay Chagan
10/11/2026
 
Modifications
1. Added a JSON file called "fitness" and decoding Swfit file called Fitness, using the Menu as an exampl
2. Add a bundle decoder for fitness
3. Added a struct for fitness and wrapped the listed items in a List layout container.
4. Decided not to use images or thumbnails and opted for text based descriptions for the Fitness menu items
5. Added a VStack alignment to items in Fitness Section with padding to make the text more readable 
 
*/

import SwiftUI

let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

let fitness = Bundle.main.decode([FitnessSection].self, from: "fitness.json")

struct CarDetail: View {
    var body: some View {
        List {
            VStack {
                Text("Rivian")
                Text("Prius")
                Text("Macan")
            }
        }
    }
}

struct FoodDetail: View {
    var body: some View {
        ForEach(menu) { section in
            NavigationLink(destination: {
                ForEach(section.items) { item in
                    HStack {
                        Image(item.thumbnailImage)
                        Text(item.name)
                    }
                }
            }) {
                Text(section.name)
            }
            }
        }
}

struct FitnessDetail: View {
    var body: some View {
        List {
            ForEach(fitness) { section in
                NavigationLink(destination: {
                    List {
                        ForEach(section.items) { item in
                            VStack(alignment: .leading, spacing: 6) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.description)
                                    .font(.body)
                            }
                            .padding(.vertical, 8)
                        }
                    }
                    .navigationTitle(section.name)
                }) {
                    Text(section.name)
                }
            }
        }
    }
}



struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CarDetail()) {
                    HStack {
                        Image(systemName:"car.fill")
                        Text("Cars")
                    }
                }
                
                HStack {
                    Image(systemName:"house.fill")
                    Text("Home")
                }
                NavigationLink (destination: FitnessDetail()){
                    HStack {
                        Image(systemName:"figure.run")
                        Text("Fitness")
                    }
                }
                NavigationLink(destination: FoodDetail()) {
                    HStack {
                        Image(systemName:"fork.knife")
                        Text("Food")
                    }
                }
                
            }.navigationTitle("Menu")
        }
    }
}


#Preview {
    ContentView()
}
