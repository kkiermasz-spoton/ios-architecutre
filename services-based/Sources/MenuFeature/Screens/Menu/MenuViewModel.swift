import Foundation
import MenuDomain
import SwiftUI

final class MenuItemViewModel: ObservableObject {

    // MARK: - Properties

    @Published private(set) var content: MenuViewContent = .loading

    private let interactor: MenuInteractor

    // MARK: - Initialization

    init(interactor: MenuInteractor) {
        self.interactor = interactor
    }

    // MARK: - API

    func fetchData() {
        Task {
            do {
                let featuredItems = try await interactor.fetchFeaturedProducts().map(Item.init(wrapping:))
                let allItems = try await interactor.fetchProducts().map(Item.init(wrapping:))
                content = .list(.init(featuredItems: featuredItems, items: allItems))
            } catch {
                print(error)
            }
        }
    }

}

private extension Item {
    init(wrapping item: Product) {
        id = item.id
        name = item.name
    }
}

