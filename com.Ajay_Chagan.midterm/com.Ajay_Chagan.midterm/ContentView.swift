//  Ajay Chagan
//  ContentView.swift
//  com.Ajay_Chagan.midterm
//
//  Created by cisstudent on 10/22/26.
//

import SwiftUI

let dogs = Bundle.main.decode([DogSection].self, from: "data.json")

let columns = [
    GridItem(.flexible(), alignment: .leading)
]

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 12){
                    ForEach(dogs) { dog in
                        NavigationLink(value: dog) {
                            HStack(spacing: 12) {
                                Image(dog.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                Text(dog.name)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }
                            .padding()
                        }
                    }
                    .padding(.horizontal)
                }
                
                .navigationTitle("Great Pyrenees")
                .navigationDestination(for: DogSection.self) { dog in
                    DogDetailView(dog: dog)
                }
            }
        }
    }
}


struct DogDetailView: View {
    let dog: DogSection
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Spacer()
                Text("Dog Details")
                Image(dog.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .shadow(radius: 4)
                
                Text(dog.name)
                    .font(.largeTitle)
                    .bold()
                
                Text(dog.description)
                    .font(.system(size: 24))
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(dog.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}
