import Foundation

public protocol ProductsService: AnyObject {

    func fetchProducts() async throws -> [Product]
    func fetchFeaturedProducts() async throws -> [Product]

}
