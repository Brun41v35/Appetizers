import SwiftUI

final class AppetizerListViewModel: ObservableObject {

    // MARK: - Properties

    @Published var appetizer: [Appetizer] = []

    // MARK: - Internal Methods

    func getAppetizers() {
        NetworkManager.shared.loadData { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizer = appetizers
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }
}
