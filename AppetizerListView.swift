import SwiftUI

struct AppetizerListView: View {

    // MARK - State Properties

    @State private var appetizer: [Appetizer] = []

    // MARK: - Body

    var body: some View {
        NavigationView {
            List(MockData.appetizer, id: \.id) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }

    // MARK: - Internal Methods

    func getAppetizers() {
        NetworkManager.shared.loadData { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizer = appetizer
                case .failure(let failure):
                    print(failure)
                }
            }
        }
    }
}

#Preview {
    AppetizerListView()
}
