import Foundation

final class NetworkManager {

    // MARK: - Properties

    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"
    private let appetizersURL = baseURL + "/appetizers"

    // MARK: - Init

    private init() {}

    // MARK: - Methods

    func loadData(completion: @escaping (Result<[Appetizer], APError>) -> Void) {

        guard let url = URL(string: appetizersURL) else {
            completion(.failure(.invalidURL))
            return
        }
    }
}
