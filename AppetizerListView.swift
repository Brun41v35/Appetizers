import SwiftUI

struct AppetizerListView: View {

    // MARK - State Properties

    @StateObject var viewModel = AppetizerListViewModel()

    // MARK: - Body

    var body: some View {
        NavigationView {
            List(viewModel.appetizer, id: \.id) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
