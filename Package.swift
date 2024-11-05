// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "mpg123-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "mpg123",
			targets: [
				"mpg123",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "mpg123",
			url: "https://github.com/sbooth/mpg123-binary-xcframework/releases/download/0.2.1/mpg123.xcframework.zip",
			checksum: "1a2aada212084921d8a6cc8dc42432b2dbcd6f0b279d946c59fa38c771fd2d36"),
	]
)
