public var menuGateway: MenuGateway? = nil

public final class Assembly {
    public static func makeUseCase(type: String) -> FetchProductsUseCase {
        guard let menuGateway = menuGateway else { fatalError() }
        if type == "FetchFeaturedProductsUseCase" {
            return FetchFeaturedProductsUseCase(menuGateway: menuGateway)
        } else {
            return FetchAllProductsUseCase(menuGateway: menuGateway)
        }
    }
}
