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
			url: "https://github.com/sbooth/mpg123-binary-xcframework/releases/download/0.3.1/mpg123.xcframework.zip",
			checksum: "1dbc6d2981fe7f36871a6110acd161e68e587f28daf34551c3e5ec3376af8aec"),
	]
)
