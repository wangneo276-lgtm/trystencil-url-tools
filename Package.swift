// swift-tools-version: 5.7
import PackageDescription
let package = Package(
    name: "TryStencilUrlTools",
    products: [.library(name: "TryStencilUrlTools", targets: ["TryStencilUrlTools"])],
    targets: [.target(name: "TryStencilUrlTools", path: "swift/Sources/TryStencilUrlTools")]
)
