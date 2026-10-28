//
//  Dog.swift
//  DogBreeds
//
//  Created by Pacheco, Hellen on 10/9/21.
//  Ajay Chagan Added a Dog struct and Hashable

import SwiftUI

struct DogSection : Codable, Identifiable, Hashable {
    var id: String
    var name: String
    var description: String
    var imageName: String
}

struct Dog : Codable, Identifiable, Hashable {
    var id: String
    var name: String
    var items: [Dog]
}
