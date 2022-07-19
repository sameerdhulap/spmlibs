// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.11"
let moduleName = "WoosmapGeofencing"
let checksum = "8d738f9421f390c2cb72aefea07f36407be4386dc117d800151471695ff599d0"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
//                .library(
//                    name: moduleName,
//                    targets: [moduleName]
//                ),
        .library(
            name: "\(moduleName)dummy",
            targets: ["\(moduleName)dummy"]
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
            dependencies: [
                .product(name: "RealmSwift", package: "realm-cocoa"),
                .product(name: "Surge", package: "Surge"),
                   ],
            path: "dummy"
//        ),
//        .binaryTarget(
//            name: moduleName,
//            url: "https://github.com/sameerdhulap/spmlibs/releases/download/v\(version)/\(moduleName).xcframework.zip",
//            checksum: checksum
        )
    ]
)
