// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.7"
let moduleName = "WoosmapGeofencing"
let checksum = "dc04abeda88f3f49168288ce6a537de2abd132a02724907e8636d17a98a0111f"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    dependencies: [
            // Surge Package
            .package(url: "https://github.com/Jounce/Surge.git", from: "2.3.0"),
            // Realm
            .package(url: "https://github.com/realm/realm-cocoa", from: "10.5.1")
        ],
    targets: [
//        .target(
//                    name: "\(moduleName)dummy",
//                    dependencies: ["Surge","RealmSwift"],
//                    path: "WoosmapGeofencing.xcframework"
//                ),
//        .target(
//                    name: "\(moduleName)dummy",
//                    dependencies: ["Surge","RealmSwift"]
//                ),
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/sameerdhulap/spmlibs/releases/download/v\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
