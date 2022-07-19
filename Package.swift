// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.9"
let moduleName = "WoosmapGeofencing"
let checksum = "02dc5aa9d1025f383d4a49d59ff9a5b52c2148c545de2a8161876f57f042abf0"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        ),
        .library(
            name: "\(moduleName)Swift",
            targets: ["\(moduleName)Swift"]
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
                    path: ""
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
