// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUP",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUP",
            targets: ["REVUPTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/revup-tnk/REVUPCore-SPM.git", exact: "1.1.11"),
        .package(url: "https://github.com/revup-tnk/REVUPLuckyEvent-SPM.git", exact: "1.1.10"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaAdManager-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaAdMob-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaChartBoost-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaPangle-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaTnkPub-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaVungle-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMax-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterAdManager-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterAdMob-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterBidMachine-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterBigo-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterChartBoost-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterDTExchange-SPM.git", exact: "1.1.1"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterFan-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterInMobi-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterIronSource-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterLine-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterMobVista-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterMoloco-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterOgury-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterPangle-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterPubMatic-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterUnityAds-SPM.git", exact: "1.1.0"),
        .package(url: "https://github.com/revup-tnk/REVUPMediaMaxAdapterVungle-SPM.git", exact: "1.1.0"),
    ],
    targets: [
        .target(
            name: "REVUPTarget",
            dependencies: [
                .product(name: "REVUPCore", package: "REVUPCore-SPM"),
                .product(name: "REVUPLuckyEvent", package: "REVUPLuckyEvent-SPM"),
                .product(name: "REVUPMediaAdManager", package: "REVUPMediaAdManager-SPM"),
                .product(name: "REVUPMediaAdMob", package: "REVUPMediaAdMob-SPM"),
                .product(name: "REVUPMediaChartBoost", package: "REVUPMediaChartBoost-SPM"),
                .product(name: "REVUPMediaPangle", package: "REVUPMediaPangle-SPM"),
                .product(name: "REVUPMediaTnkPub", package: "REVUPMediaTnkPub-SPM"),
                .product(name: "REVUPMediaVungle", package: "REVUPMediaVungle-SPM"),
                .product(name: "REVUPMediaMax", package: "REVUPMediaMax-SPM"),
                .product(name: "REVUPMediaMaxAdapterAdManager", package: "REVUPMediaMaxAdapterAdManager-SPM"),
                .product(name: "REVUPMediaMaxAdapterAdMob", package: "REVUPMediaMaxAdapterAdMob-SPM"),
                .product(name: "REVUPMediaMaxAdapterBidMachine", package: "REVUPMediaMaxAdapterBidMachine-SPM"),
                .product(name: "REVUPMediaMaxAdapterBigo", package: "REVUPMediaMaxAdapterBigo-SPM"),
                .product(name: "REVUPMediaMaxAdapterChartBoost", package: "REVUPMediaMaxAdapterChartBoost-SPM"),
                .product(name: "REVUPMediaMaxAdapterDTExchange", package: "REVUPMediaMaxAdapterDTExchange-SPM"),
                .product(name: "REVUPMediaMaxAdapterFan", package: "REVUPMediaMaxAdapterFan-SPM"),
                .product(name: "REVUPMediaMaxAdapterInMobi", package: "REVUPMediaMaxAdapterInMobi-SPM"),
                .product(name: "REVUPMediaMaxAdapterIronSource", package: "REVUPMediaMaxAdapterIronSource-SPM"),
                .product(name: "REVUPMediaMaxAdapterLine", package: "REVUPMediaMaxAdapterLine-SPM"),
                .product(name: "REVUPMediaMaxAdapterMobVista", package: "REVUPMediaMaxAdapterMobVista-SPM"),
                .product(name: "REVUPMediaMaxAdapterMoloco", package: "REVUPMediaMaxAdapterMoloco-SPM"),
                .product(name: "REVUPMediaMaxAdapterOgury", package: "REVUPMediaMaxAdapterOgury-SPM"),
                .product(name: "REVUPMediaMaxAdapterPangle", package: "REVUPMediaMaxAdapterPangle-SPM"),
                .product(name: "REVUPMediaMaxAdapterPubMatic", package: "REVUPMediaMaxAdapterPubMatic-SPM"),
                .product(name: "REVUPMediaMaxAdapterUnityAds", package: "REVUPMediaMaxAdapterUnityAds-SPM"),
                .product(name: "REVUPMediaMaxAdapterVungle", package: "REVUPMediaMaxAdapterVungle-SPM"),
            ],
            path: "Sources"
        )
    ]
)
