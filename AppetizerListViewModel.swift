import SwiftUI

final class AppetizerListViewModel: ObservableObject {

    // MARK: - Properties

    @Published var appetizer: [Appetizer] = []
}
