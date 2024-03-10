import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizer, id: \.id) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
