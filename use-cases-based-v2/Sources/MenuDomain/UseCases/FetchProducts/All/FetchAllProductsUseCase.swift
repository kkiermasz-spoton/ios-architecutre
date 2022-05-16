public protocol FetchAllProductsUseCase: AnyObject {

    func fetchProducts() async throws -> [Product]
    
}
