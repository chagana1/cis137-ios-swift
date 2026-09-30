/*
ContentView.swift

Ajay Chagan
09/21/2026
Lab1
*/

import SwiftUI

struct  ContentView: View {
    
    @State private var selectedDog: String? = nil
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        VStack {
            Text("Tap on the dog to see description")
                .font(.title2)
                .padding(.top)
            
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(dogNames, id: \.self) {dog in
                    Image(dog)
                        .resizable()
                        .scaledToFit()
                        .frame(height:120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8.0)
                                .stroke(selectedDog == dog ? Color.yellow : Color.clear, lineWidth: 4.0)
                        )
                        .onTapGesture {
                            selectedDog = dog
                        }
                }
            }
            
            if let selectedDog = selectedDog {
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text(selectedDog)
                        .font(.title2)
                        .bold()
                    
                    Text(dogDict[selectedDog] ?? "Description not found")
                        .font(.title3)
                        .padding()
                        .border(Color.gray, width: 2)
                        .background(RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.gray, lineWidth: 2))
                        .fixedSize(horizontal: false, vertical: true)
                }
            } else {
                Text("Tap a dog to see its desciption")
                    .padding()
            }
            Spacer()
        }
        
            .padding()
            
    }
    }


let dogNames =  ["Airedale Terrier", "American Foxhound", "Dutch Shepherd", "Havanese", "Leonberger", "Mudi", "Norwegian Lundehund", "Pharaoh Hound", "Scottish Terrier", "Tosa"]

let dogDescriptions = ["The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.", "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.", "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.", "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.", "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.", "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.", "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.", "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.", "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.", "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."]

var dogDict = Dictionary(uniqueKeysWithValues: zip(dogNames, dogDescriptions))

#Preview {
    ContentView()
}
