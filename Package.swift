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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.3.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.3"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.6.1"),
        .package(url: "https://github.com/Ogury/ogury-sdk-spm.git", exact: "5.2.3"),
        .package(url: "https://github.com/ly-ads-network/swift-package-manager-fivead.git", exact: "3.0.1"),
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", exact: "5.1.0"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.6.0"),
    ],
    targets: [
        .target(
            name: "REVUPTarget",
            dependencies: [
                .target(name: "REVUP"),
                .target(name: "REVUPLuckyEvent"),
                .target(name: "REVUPMediaAdManager"),
                .target(name: "REVUPMediaAdMob"),
                .target(name: "REVUPMediaChartBoost"),
                .target(name: "REVUPMediaMax"),
                .target(name: "REVUPMediaMaxAdapterAdManager"),
                .target(name: "REVUPMediaMaxAdapterAdMob"),
                .target(name: "REVUPMediaMaxAdapterAmazon"),
                .target(name: "REVUPMediaMaxAdapterBidMachine"),
                .target(name: "REVUPMediaMaxAdapterBigo"),
                .target(name: "REVUPMediaMaxAdapterChartBoost"),
                .target(name: "REVUPMediaMaxAdapterDTExchange"),
                .target(name: "REVUPMediaMaxAdapterFan"),
                .target(name: "REVUPMediaMaxAdapterInMobi"),
                .target(name: "REVUPMediaMaxAdapterIronSource"),
                .target(name: "REVUPMediaMaxAdapterLine"),
                .target(name: "REVUPMediaMaxAdapterMobVista"),
                .target(name: "REVUPMediaMaxAdapterMoloco"),
                .target(name: "REVUPMediaMaxAdapterOgury"),
                .target(name: "REVUPMediaMaxAdapterPangle"),
                .target(name: "REVUPMediaMaxAdapterPubMatic"),
                .target(name: "REVUPMediaMaxAdapterUnityAds"),
                .target(name: "REVUPMediaMaxAdapterVungle"),
                .target(name: "REVUPMediaPangle"),
                .target(name: "REVUPMediaTnkPub"),
                .target(name: "REVUPMediaVungle"),
                .target(name: "REVUPMediaMaxAdapterAmazonMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterBidMachineMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterBigoMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterPangleMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterChartboostMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterFanMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterDTMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterAdManagerMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterAdMobMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterInMobiMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterLineMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterMintegralMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterMolocoMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterOguryMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterPubMaticMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterUnityAdsMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterVungleMediationAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "BidMachine", package: "BidMachine-SPM"),
                .product(name: "OgurySdk", package: "ogury-sdk-spm"),
                .product(name: "FiveAd", package: "swift-package-manager-fivead"),
                .product(name: "OpenWrapSDK", package: "OpenWrapSDK-Swift-Package"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
                .target(name: "BigoADS"),
                .target(name: "ChartBoost"),
                .target(name: "DTBiOSSDK"),
                .target(name: "Facebook"),
                .target(name: "IASDKCore"),
                .target(name: "InMobiSDK"),
                .target(name: "IronSource"),
                .target(name: "PAGAdSDK"),
                .target(name: "TnkPubSdk"),
                .target(name: "UnityAds"),
            ],
            resources: [.copy("PAGAdSDK.bundle")],
            linkerSettings: [
              .linkedFramework("Accelerate" ),
              .linkedLibrary("resolv"),
              .linkedLibrary("bz2"),
              .linkedLibrary("c++abi"),
              .linkedLibrary("c++"),
              .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "REVUP",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUP.zip",
            checksum: "ea0362ef1b54e198a7828959f393a8e1ed55fc919f3ad79e9350f5ae15df9819"
        ),
        .binaryTarget(
            name: "REVUPLuckyEvent",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPLuckyEvent.zip",
            checksum: "5397d5e775016270a489bd34113c1038c2c40084dc244c068e24eaede1d452e3"
        ),
        .binaryTarget(
            name: "REVUPMediaAdManager",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaAdManager.zip",
            checksum: "c9bd7d90578874a1b827c542aca6db9689a3651336a04c726230f1472f490d72"
        ),
        .binaryTarget(
            name: "REVUPMediaAdMob",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaAdMob.zip",
            checksum: "b1948ba0e14fc0235f02d8ec990478764817ce650550663cf52332c8c4111e8a"
        ),
        .binaryTarget(
            name: "REVUPMediaChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaChartBoost.zip",
            checksum: "4a3041b8dfe6bb588516b5366aa658de4a979d8644e7809b7b2499e772c1a814"
        ),
        .binaryTarget(
            name: "REVUPMediaMax",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMax.zip",
            checksum: "544fc6a91b0a5a396afb6451b98259cc80ba932f5c14fb6f66448331aa09a6c9"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdManager",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterAdManager.zip",
            checksum: "e1271cd770eed2c39751647a7a7da5923b20b08a7f44d8b801df49a9d3ee5786"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdMob",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterAdMob.zip",
            checksum: "d25d73ac8f68e965fbb225367d24302bd90d2f0e33969efa91b79ca8b8297f70"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAmazon",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterAmazon.zip",
            checksum: "c9cc2a79462dc533bd39fb706602c10cc2aa4cfc079dec4864d1898c89a49a00"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterBidMachine.zip",
            checksum: "712239725df77c07a9d41e3cbf53113634d5b4cfef46b0d73ab529c65763ebfe"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigo",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterBigo.zip",
            checksum: "131214c0d0f0e2538ea7009f3d864f3c371ea079dc1cc15f3599b8b5a610202b"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterChartBoost.zip",
            checksum: "7d9eab20fdb55b45183f2ea6616faa58f0c0ad4109baa6bc5fe0831f7d621920"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTExchange",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterDTExchange.zip",
            checksum: "8d6926a250d13cd74bdba1d3e2cd3ad03e24111326a366aec429ffa0d2502435"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterFan",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterFan.zip",
            checksum: "68999c0db73aa254f7ede8d88b92b1b3de61c232483adac99a7080cfd121aeb2"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobi",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterInMobi.zip",
            checksum: "f28fd0c43897610faf9f60fafdc2507bbff0a75094d687871a071d20124e8f17"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterIronSource.zip",
            checksum: "bea030b3a17ddff18696b8d72799fc17c43316bc607c732fd38dffbebddf1af4"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterLine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterLine.zip",
            checksum: "375d2dd0ca363efa2c23173aa2fb98d10b3d5737f6abdf428deb75bf5c63b02b"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMobVista",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterMobVista.zip",
            checksum: "0ac39b89d6cc68a5fbc5fb96159c5e1eaff7335c25ec264e71098b65920c935e"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMoloco",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterMoloco.zip",
            checksum: "4ead0389937c3208400739ae3f04f1b07f68b4f30c0e3e4e81d2a9d079bbd470"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterOgury",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterOgury.zip",
            checksum: "9ea0ba8fac02ad18c89d4ca5d959143aa9c21203ea75be9feed603f9c5bd266a"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPangle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterPangle.zip",
            checksum: "1a3312d0a97d1d14427141b1c055f173003a6e91ef31303dab125215719139f8"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMatic",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterPubMatic.zip",
            checksum: "a3bf54c566a92b414500f7faa82eda743d8fc01664fd78927ad785ba1abf6f9d"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterUnityAds",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterUnityAds.zip",
            checksum: "c37531b69a07f4f6d40ecbc630cf7efb5e005e687e15f39992a0659bdea821bd"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterVungle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterVungle.zip",
            checksum: "47719aa57501ed6d107299e8ea4097a1eb86185f506c446ee18a7253418b6a38"
        ),
        .binaryTarget(
            name: "REVUPMediaPangle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaPangle.zip",
            checksum: "aed7b031d1981608db3957c7ca39fbbfab09874372ef1cd5d950a2fcfc144bac"
        ),
        .binaryTarget(
            name: "REVUPMediaTnkPub",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaTnkPub.zip",
            checksum: "91ea07dd87f2b171bf2d8f89c8ed63fc4b349edd4e30c8af6ac30dc11a1f88ef"
        ),
        .binaryTarget(
            name: "REVUPMediaVungle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaVungle.zip",
            checksum: "a4b8e1dd8ed3bbe8c85503c3ecfe7c219db796eccb13a74a9fe332ff8223eb38"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAmazonMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "d8bc92071c5d17398462bad03c145e646bc97bb5bb2d3600fa675532c8df3ed9"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "5e3e22b2eb48c38ef67f0bd221ff3aa8e547c2a6efba84cebf018fcdb0cd2814"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "4ac5da11f97c4f02cad820a7e4ac029c690b605daf446fbc417cdcd393425aaf"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "31057c928749d26ed9f01cfce58d82f3aef444b5d8fbc61f9bb33e0cd55e8396"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "d6fcfef31ac73eb3858b50fa829a1bcadbd79a32f2fa8e71f08b5dedcb56bf34"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterFanMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationFacebookAdapter.xcframework.zip",
            checksum: "70d5bf19694d64dfa09ffff0dcb5d9774425e667e8cd991f158db86825d86937"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationFyberAdapter.xcframework.zip",
            checksum: "38b2f090bc7f9fa10f66777cb011c5ed0bc17e287800bb28fc855df047f106ee"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "292e61512da34477c86a38e96f857f145bff00207d47de37b59029618ab87feb"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "e7d0f95a8c50da4151fcc39c262d6a484e86badeb25dc37e70406fdce8fb1cbd"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobiMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationInMobiAdapter.xcframework.zip",
            checksum: "713b143c7b5db59266f9c5d3d1899e20893de918eeecf387b44640e8c9c66218"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "0c5b0e1dc3bb35fa56495a521f8bd23ef962314290ba518be10df2c6ced4e203"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterLineMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationLineAdapter.xcframework.zip",
            checksum: "7c0429d473ef2eab53dba105e245ef66bd92ecca0aa7df3203086301a624e4cc"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMintegralMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationMintegralAdapter.xcframework.zip",
            checksum: "6e906b9c393004b03fd8f1ce549ac8123649c8afc8865319c3406c6e14dfd6de"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "2cd41cfb147dd9da24d00cd964ad10b8f9ad32dd713454f3bfd531aef6b410b5"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterOguryMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationOguryPresageAdapter.xcframework.zip",
            checksum: "ee3b943fb69d36990d5482d3ab8f5299eddf930dfed73deeb93f18dca7f2945f"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMaticMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationPubMaticAdapter.xcframework.zip",
            checksum: "fce2ef67cb424b4a24ca066d9879f5039fbe8da079f732600d10fd954c5ac2a1"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "e9267ba2f455543eaa17014733b5ebb944741aa6c7481604b0af96f6280f8dc7"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "0b372df65f1476cc497f9c8dce69090b796fef386b6c7850de9df80c7f0f1cd3"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/BigoADS.xcframework.zip",
            checksum: "8154c5b443f5dc314e2439dd31c167ccdb6541ec072dd020baa17ebd1164f6b0"
        ),
        .binaryTarget(
            name: "ChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/ChartboostSDK.xcframework.zip",
            checksum: "a3c4735e4622595aeef37570d57bbaf25ae68a2ce793305fd029d6ff7eb60138"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/DTBiOSSDK.xcframework.zip",
            checksum: "cefc9261a89959584d815b2a8160162fa4f88f8b83849ab7beaf5147c98615b5"
        ),
        .binaryTarget(
            name: "Facebook",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/FBAudienceNetwork.xcframework.zip",
            checksum: "94afc272e0c79b336aa91b3260149a48237af4c33efe0189773ed937197484d9"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/IASDKCore.xcframework.zip",
            checksum: "e7ee245233178c49cd2b3162bf7e72f0bcc9b4636b3a9b62c8b477871baaa2bf"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/InMobiSDK.xcframework.zip",
            checksum: "422a483d5c1355c6cfb52c6884dfc9b680ab35d4ef05b61c36b5ebc160b41c7f"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/IronSource.xcframework.zip",
            checksum: "caae73d0f2b59fa402d44597a292cb45683b91f54118186fbca35ba5c46d9c75"
        ),
        .binaryTarget(
            name: "PAGAdSDK",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/PAGAdSDK.xcframework.zip",
            checksum: "536ac01b654ab62b10f0b381f774bbfa6722f7b3065311cabf4ccc2ee2ab12d5"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/TnkPubSdk.xcframework.zip",
            checksum: "e966e37802cc8dfa2d4c74e87cfafc392c4ce041d967ad083c52b6f5499df3d9"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/UnityAds.xcframework.zip",
            checksum: "a6538057d743d6a607314262d2d65725dd9f64dc35e2f75843bd74759f47f9e8"
        ),
    ]
)
