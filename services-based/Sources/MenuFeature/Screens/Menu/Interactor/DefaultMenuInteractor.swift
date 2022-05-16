import MenuDomain

final class DefaultMenuInteractor: MenuInteractor {

    // MARK: - Properties

    private let productsService: ProductsService

    // MARK: - Initialization

    convenience init() {
        let service = MenuDomain.Assembly.makeService()
        self.init(productsService: service)
    }

    init(productsService: ProductsService) {
        self.productsService = productsService
    }

    // MARK: - MenuInteractor

    func fetchProducts() async throws -> [Product] { try await productsService.fetchProducts() }
    func fetchFeaturedProducts() async throws -> [Product] { try await productsService.fetchFeaturedProducts() }

}
