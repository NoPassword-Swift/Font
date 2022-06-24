// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "Font",
	platforms: [
		.iOS("11.0"),
		.macOS("11.0"),
	],
	products: [
		.library(
			name: "Font",
			targets: ["Font"]),
	],
	targets: [
		.target(
			name: "Font",
			dependencies: []),
	]
)
