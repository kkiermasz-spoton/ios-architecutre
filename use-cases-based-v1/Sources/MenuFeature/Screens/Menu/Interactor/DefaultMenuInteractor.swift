import MenuDomain

final class DefaultMenuInteractor: MenuInteractor {

    // MARK: - Properties

    private let fetchAllProductsUseCase: FetchProductsUseCase
    private let fetchFeaturedProductsUseCase: FetchProductsUseCase

    // MARK: - Initialization

    convenience init() {
        let fetchAllProductsUseCase = MenuDomain.Assembly.makeUseCase(type: "FetchAllProductsUseCase")
        let fetchFeaturedProductsUseCase = MenuDomain.Assembly.makeUseCase(type: "FetchFeaturedProductsUseCase")
        self.init(fetchAllProductsUseCase: fetchAllProductsUseCase, fetchFeaturedProductsUseCase: fetchFeaturedProductsUseCase)
    }

    init(
        fetchAllProductsUseCase: FetchProductsUseCase,
        fetchFeaturedProductsUseCase: FetchProductsUseCase
    ) {
        self.fetchAllProductsUseCase = fetchAllProductsUseCase
        self.fetchFeaturedProductsUseCase = fetchFeaturedProductsUseCase
    }

    // MARK: - MenuInteractor

    func fetchProducts() async throws -> [Product] { try await fetchAllProductsUseCase.fetchProducts() }
    func fetchFeaturedProducts() async throws -> [Product] { try await fetchFeaturedProductsUseCase.fetchProducts() }

}
