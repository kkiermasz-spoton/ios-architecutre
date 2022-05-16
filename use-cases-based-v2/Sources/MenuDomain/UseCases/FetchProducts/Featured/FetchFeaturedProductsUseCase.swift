public protocol FetchFeaturedProductsUseCase: AnyObject {

    func fetchProducts() async throws -> [Product]

}
