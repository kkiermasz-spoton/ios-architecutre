enum MenuViewContent {
    case loading
    case list(ListContent)
}

extension MenuViewContent {
    struct ListContent {
        let featuredItems: [Item]
        let items: [Item]
    }
}
