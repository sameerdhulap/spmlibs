// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.6"
let moduleName = "WoosmapGeofencing"
let checksum = "419a55fc58e856f6597c38fc7e1796487c219fa9dd68c5ca3618c724973214b3"

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
        .target(
                    name: "\(moduleName)dummy",
                    dependencies: ["Surge","RealmSwift"],
                    path: "WoosmapGeofencing.xcframework"
                ),
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
