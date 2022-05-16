public var menuGateway: MenuGateway? = nil

public final class Assembly {

    public static func makeService() -> ProductsService {
        guard let menuGateway = menuGateway else { fatalError() }
        return DefaultProductsService(menuGateway: menuGateway)
    }

}

