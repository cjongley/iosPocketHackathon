// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let offset, number: Int
    let results: [FoodResult]
    let totalResults: Int
}

// MARK: - Result
struct FoodResult: Codable {
    let id: Int?
    let title: String?
    let calories: Int?
    let carbs, fat: String?
    let image: String?
    let imageType, protein: String?
}
