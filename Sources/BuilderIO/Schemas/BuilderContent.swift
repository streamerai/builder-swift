// HACK HACK HACK
public struct Next: Codable {
    public var id: String
}

// Schema for Builder content
public struct BuilderContent: Codable {
    public var data = BuilderContentData()
    public var screenshot: String? = nil
    public var ownerId: String? = nil
}

//public struct BuilderContentAndMore<More: Codable>: Codable {
//    public var data = BuilderContentData()
//    public var more: More
//}

public struct BuilderContentData: Codable {
    public var blocks: [BuilderBlock] = []
    public var next: Next?
}

struct BuilderContentList: Codable {
    var results: [BuilderContent] = []
}
