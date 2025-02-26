// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SpecLeaks",    
    platforms: [
      .iOS(.v10)
    ],
    products: [        
        .library(name: "SpecLeaks", targets: ["SpecLeaks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", .upToNextMajor(from: "9.2.1")),
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [     
        .target(name: "SpecLeaks", dependencies: ["Quick", "Nimble"], path: "SpecLeaks/Classes/"),
    ],
    swiftLanguageVersions: [.v5]
)
