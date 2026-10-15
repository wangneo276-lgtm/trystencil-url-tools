import Foundation

public enum UrlError: Error { case unknown(String, String) }

public enum Urls {
    public static let base = "https://trystencil.org"
    private static let pages: [String: String] = ["new": "/app/new", "generator": "/ai-tattoo-generator", "try_on": "/try-on", "pricing": "/pricing", "font": "/tattoo-font-generator", "stencil": "/stencil", "artists": "/artists", "stencil_maker": "/tattoo-stencil-maker", "how": "/how-it-works", "examples": "/examples"]
    public static func homeUrl() -> String { base + "/" }
    public static func pageUrl(_ name: String) throws -> String {
        guard let path = pages[name] else { throw UrlError.unknown("page", name) }
        return base + path
    }

    public static func ideaUrl(_ slug: String) throws -> String {
        let pattern = try NSRegularExpression(pattern: "^[a-z0-9]+(?:-[a-z0-9]+)*$")
        let range = NSRange(slug.startIndex..., in: slug)
        guard pattern.firstMatch(in: slug, range: range) != nil else {
            throw UrlError.unknown("idea", slug)
        }
        return base + "/ideas/" + slug
    }
}
