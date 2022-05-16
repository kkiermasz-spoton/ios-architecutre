final class FetchFeaturedProductsUseCase: FetchProductsUseCase {

    private let menuGateway: MenuGateway

    init(menuGateway: MenuGateway) {
        self.menuGateway = menuGateway
    }

    func fetchProducts() async throws -> [Product] {
        let userId = 2137
        let products = try await menuGateway.fetchProducts()
        return products.filter { $0.ownerId == userId && $0.isFeatured }
    }

}
