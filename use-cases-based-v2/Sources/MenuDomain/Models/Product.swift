public struct Product {

    public let id: Int
    public let name: String
    public let ownerId: Int
    public let isFeatured: Bool

    public init(
        id: Int,
        name: String,
        ownerId: Int,
        isFeatured: Bool = false
    ) {
        self.id = id
        self.name = name
        self.ownerId = ownerId
        self.isFeatured = isFeatured
    }

}
