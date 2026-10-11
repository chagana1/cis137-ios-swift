//
//  Fitness.swift
//  iDine
//
//  Created by Paul Hudson on 27/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct FitnessSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [FitnessItem]
}

struct FitnessItem: Codable, Identifiable, Equatable {
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Int
    var description: String

//    var mainImage: String {
//        name.replacingOccurrences(of: " ", with: "-").lowercased()
//    }

//    var thumbnailImage: String {
//        "\(mainImage)-thumb"
//    }

    #if DEBUG
    static let example = FitnessItem(id: UUID(), name: "Core Workout", photoCredit: "", price: 0, description: "Workout the core at least two to three times a week.  It does not have to be crunches of situps but it should challenge your core muscles")
    #endif
}
