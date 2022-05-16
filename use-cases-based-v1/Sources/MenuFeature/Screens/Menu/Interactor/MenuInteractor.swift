import MenuDomain

protocol MenuInteractor: AnyObject {

    func fetchProducts() async throws -> [Product]
    func fetchFeaturedProducts() async throws -> [Product]

}
