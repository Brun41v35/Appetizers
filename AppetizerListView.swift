import SwiftUI

struct AppetizerListView: View {

    // MARK - State Properties

    @StateObject var viewModel = AppetizerListViewModel()
    @State private var appetizer: [Appetizer] = []

    // MARK: - Body

    var body: some View {
        NavigationView {
            List(appetizer, id: \.id) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            getAppetizers()
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
