import MenuDomain

final class DefaultMenuInteractor: MenuInteractor {

    // MARK: - Properties

    private let fetchAllProductsUseCase: FetchAllProductsUseCase
    private let fetchFeaturedProductsUseCase: FetchFeaturedProductsUseCase

    // MARK: - Initialization

    convenience init() {
        let fetchAllProductsUseCase = MenuDomain.Assembly.makeAllProductsUseCase()
        let fetchFeaturedProductsUseCase = MenuDomain.Assembly.makeFeaturedProductsUseCase()
        self.init(fetchAllProductsUseCase: fetchAllProductsUseCase, fetchFeaturedProductsUseCase: fetchFeaturedProductsUseCase)
    }

    init(
        fetchAllProductsUseCase: FetchAllProductsUseCase,
        fetchFeaturedProductsUseCase: FetchFeaturedProductsUseCase
    ) {
        self.fetchAllProductsUseCase = fetchAllProductsUseCase
        self.fetchFeaturedProductsUseCase = fetchFeaturedProductsUseCase
    }

    // MARK: - MenuInteractor

    func fetchProducts() async throws -> [Product] { try await fetchAllProductsUseCase.fetchProducts() }
    func fetchFeaturedProducts() async throws -> [Product] { try await fetchFeaturedProductsUseCase.fetchProducts() }

}
