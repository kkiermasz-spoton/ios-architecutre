import MenuDomain

final class DefaultMenuGateway: MenuGateway {

    func fetchProducts() async throws -> [Product] {
        makeData()
    }

    private func makeData() -> [Product] {
        [Product(id: 420, name: "Apple", ownerId: 2137)]
    }

}
