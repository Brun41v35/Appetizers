import Foundation

final class NetworkManager {

    // MARK: - Properties

    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"
    static let appetizersURL = baseURL + "/appetizers"

    // MARK: - Init

    private init() {}

    // MARK: - Methods

    func loadData(completion: @escaping (Result<[Appetizer], Error>) -> Void) {}
}
