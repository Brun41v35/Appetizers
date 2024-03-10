import Foundation

struct AppetizerRequest {
    let request: [Appetizer]
}

struct Appetizer: Decodable {
    let imageURL: String
    let name: String
    let description: String
    let protein: Int
    let id: Int
    let price: Double
    let carbs: Double
    let calories: Int
}
