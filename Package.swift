// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.10"
let moduleName = "WoosmapGeofencing"
let checksum = "e51de0c4c12d7ba0e672d93fd50b712178f64ff09a33dbc0368cb85a8b0fa4fb"

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
//        .library(
//            name: "\(moduleName)Swift",
//            targets: ["\(moduleName)Swift"]
//        )
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
//                    path: ""
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
