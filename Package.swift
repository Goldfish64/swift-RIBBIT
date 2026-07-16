//
//  Package.swift
//
//  Copyright © 2026 John Davis. All rights reserved.
//

// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-RIBBIT",
  platforms: [
    .macOS(.v12),
    .iOS(.v15),
    .tvOS(.v15),
    .watchOS(.v8)
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "swift-RIBBIT",
      targets: ["swift-RIBBIT"]
    ),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "swift-RIBBIT"
    ),
    .testTarget(
      name: "swift-RIBBITTests",
      dependencies: ["swift-RIBBIT"]
    ),
  ],
  swiftLanguageModes: [.v6]
)
