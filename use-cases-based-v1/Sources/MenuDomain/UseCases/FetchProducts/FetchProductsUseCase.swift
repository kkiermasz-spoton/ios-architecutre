public protocol FetchProductsUseCase: AnyObject {

    func fetchProducts() async throws -> [Product]
    
}
