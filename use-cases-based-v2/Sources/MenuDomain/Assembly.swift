public var menuGateway: MenuGateway? = nil

public final class Assembly {
    public static func makeFeaturedProductsUseCase() -> FetchFeaturedProductsUseCase {
        guard let menuGateway = menuGateway else { fatalError() }
        return DefaultFetchFeaturedProductsUseCase(menuGateway: menuGateway)
    }

    public static func makeAllProductsUseCase() -> FetchAllProductsUseCase {
        guard let menuGateway = menuGateway else { fatalError() }
        return DefaultFetchAllProductsUseCase(menuGateway: menuGateway)
    }
}
