// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "HelloLCD",
    dependencies: [
        .Package(url: "https://github.com/uraimo/HD44780CharacterLCD.git", majorVersion: 2)
    ]
)
