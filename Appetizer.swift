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

struct MockData {

    static let sampleAppetizer = Appetizer(imageURL: "",
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           protein: 14,
                                           id: 1,
                                           price: 8.99,
                                           carbs: 0,
                                           calories: 300)
}
