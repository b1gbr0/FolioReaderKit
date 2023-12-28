// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "FolioReaderKit",
  defaultLocalization: "en",
  platforms: [.iOS(.v12), .macOS(.v10_15)],
  products: [
    .library(
      name: "FolioReaderKit",
      targets: ["FolioReaderKit"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/ZipArchive/ZipArchive.git", exact: "2.3.0"),
    .package(url: "https://github.com/cxa/MenuItemKit.git", .upToNextMajor(from: "3.0.0")),
    .package(url: "https://github.com/b1gbr0/ZFDragableModalTransition.git", .upToNextMajor(from: "0.7.0")),
    .package(url: "https://github.com/tadija/AEXML.git", .upToNextMajor(from: "4.2.0")),
    .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", .upToNextMajor(from: "5.3.0")),
    .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "10.45.2")),
  ],
  targets: [
      .target(
          name: "FolioReaderKit",
          dependencies: [
            "ZipArchive",
            "MenuItemKit",
            "ZFDragableModalTransition",
            "AEXML",
            "FontBlaster",
            .product(name: "Realm", package: "realm-swift"),
            .product(name: "RealmSwift", package: "realm-swift")
          ],
          path: ".",
          exclude: [
            "Example"
          ],
          sources: [
            "Vendor",
            "Source/EPUBCore",
            "Source/Models",
            "Source/Extensions.swift",
            "Source/FolioReaderAddHighlightNote.swift",
            "Source/FolioReaderAudioPlayer.swift",
            "Source/FolioReaderCenter.swift",
            "Source/FolioReaderChapterList.swift",
            "Source/FolioReaderChapterListCell.swift",
            "Source/FolioReaderConfig.swift",
            "Source/FolioReaderContainer.swift",
            "Source/FolioReaderFontsMenu.swift",
            "Source/FolioReaderHighlightList.swift",
            "Source/FolioReaderKit.h",
            "Source/FolioReaderKit.swift",
            "Source/FolioReaderPage.swift",
            "Source/FolioReaderPageIndicator.swift",
            "Source/FolioReaderPlayerMenu.swift",
            "Source/FolioReaderQuoteShare.swift",
            "Source/FolioReaderSharingProvider.swift",
            "Source/FolioReaderUserDefaults.swift",
            "Source/FolioReaderWebView.swift",
            "Source/PageViewController.swift",
            "Source/QuoteImage.swift",
            "Source/ScrollScrubber.swift",
          ],
          resources: [.process("Source/Resources")],
          publicHeadersPath: "./Source/FolioReaderKit"
      ),
  ]
)
