public protocol MenuGateway: AnyObject {

    func fetchProducts() async throws -> [Product]
    
}
