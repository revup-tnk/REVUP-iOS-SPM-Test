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
    targets: [
        .target(
            name: "REVUPTarget",
            dependencies: [
                .target(name: "REVUP"),
                .target(name: "REVUPLuckyEvent"),
                .target(name: "REVUPMediaChartBoost"),
                .target(name: "REVUPWithChartBoost"),
                .target(name: "REVUPMediaTnkPub"),
                .target(name: "TnkPubSdk"),
                .target(name: "REVUPMediaVungle"),
                .target(name: "VungleAdsSDK"),
                .target(name: "REVUPMediaMax"),
                .target(name: "AppLovinSDK"),
                .target(name: "REVUPMediaMaxAdapterBidMachine"),
                .target(name: "AppLovinMediationBidMachineAdapter"),
                .target(name: "BidMachine"),
                .target(name: "OMSDK_Appodeal"),
                .target(name: "REVUPMediaMaxAdapterBigo"),
                .target(name: "REVUPMediaMaxAdapterBigoMediationAdapter"),
                .target(name: "BigoADS"),
                .target(name: "REVUPMediaMaxAdapterChartBoost"),
                .target(name: "REVUPMediaMaxAdapterChartboostMediationAdapter"),
                .target(name: "REVUPMediaMaxAdapterDTExchange"),
                .target(name: "AppLovinMediationFyberAdapter"),
                .target(name: "IASDKCore"),
                .target(name: "REVUPMediaMaxAdapterFan"),
                .target(name: "AppLovinMediationFacebookAdapter"),
                .target(name: "FBAudienceNetwork"),
                .target(name: "REVUPMediaMaxAdapterInMobi"),
                .target(name: "AppLovinMediationInMobiAdapter"),
                .target(name: "InMobiSDK"),
                .target(name: "REVUPMediaMaxAdapterIronSource"),
                .target(name: "REVUPMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "IronSourceSDK"),
                .target(name: "REVUPMediaMaxAdapterMobVista"),
                .target(name: "AppLovinMediationMintegralAdapter"),
                .target(name: "MTGSDK"),
                .target(name: "MTGSDKBanner"),
                .target(name: "MTGSDKBidding"),
                .target(name: "MTGSDKNewInterstitial"),
                .target(name: "MTGSDKInterstitialVideo"),
                .target(name: "MTGSDKReward"),
                .target(name: "MTGSDKSplash"),
                .target(name: "MTGSDKNativeAdvanced"),
                .target(name: "REVUPMediaMaxAdapterMoloco"),
                .target(name: "AppLovinMediationMolocoAdapter"),
                .target(name: "MolocoSDK"),
                .target(name: "REVUPMediaMaxAdapterOgury"),
                .target(name: "AppLovinMediationOguryPresageAdapter"),
                .target(name: "OguryWrapper"),
                .target(name: "OguryAds"),
                .target(name: "OguryCore"),
                .target(name: "OMSDK"),
                .target(name: "REVUPMediaMaxAdapterPubMatic"),
                .target(name: "AppLovinMediationPubMaticAdapter"),
                .target(name: "OpenWrapSDK"),
                .target(name: "OMSDK_Pubmatic"),
                .target(name: "REVUPMediaMaxAdapterVungle"),
                .target(name: "REVUPMediaMaxAdapterVungleMediationAdapter"),
            ],
            resources: [
                .copy("MTGResources.bundle")
            ],
            linkerSettings: [
                .linkedFramework("Accelerate" ),
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AVKit"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("Foundation"),
                .linkedFramework("ImageIO"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("SafariServices"),
                .linkedFramework("Security"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                .linkedLibrary("bz2"),
                .linkedLibrary("c++"),
                .linkedLibrary("c++abi"),
                .linkedLibrary("iconv"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
            ]
        ),
        .binaryTarget(
            name: "REVUP",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.11/REVUP.zip",
            checksum: "e46255d0a49d3cf030e4a55c73bc25dfedf6470d62a078f9de515b5ee4964ec6"
        ),
        .binaryTarget(
            name: "REVUPLuckyEvent",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.10/REVUPLuckyEvent.zip",
            checksum: "a79c6b77ab8d7a282d5366854dfe574d9a387a2e4c5aa5f25809d1db35f508fc"
        ),
        .binaryTarget(
            name: "REVUPMediaChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaChartBoost.zip",
            checksum: "acc434326da0ec6f4b43120ca4f85f58b25b3fb68a894aa5197889059fe5c28b"
        ),
        .binaryTarget(
            name: "REVUPWithChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/ChartboostSDK.xcframework.zip",
            checksum: "2c4e76dbfba4037119e368b0074880d18dba76c673f0c7e175e5b3d221ae3b6e"
        ),
        .binaryTarget(
            name: "REVUPMediaTnkPub",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaTnkPub.xcframework.zip",
            checksum: "4e39134effa24620cebf61895a42fa7112aeca94445e574234e4785fd7d55332"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/TnkPubSdk.xcframework.zip",
            checksum: "d96cccf26eff04f2b3df845124638f3facf7703b298abaac586a4ff636a5040c"
        ),
        .binaryTarget(
            name: "REVUPMediaVungle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaVungle.zip",
            checksum: "d07106c3d18dcba951f02e6d9cd89e5f92bb98a261fe6dbfd46625fe4bfb9c4c"
        ),
        .binaryTarget(
            name: "VungleAdsSDK",
            url: "https://vungle2-cdn-prod.s3.amazonaws.com/sdks/ios/SwiftPackageManager/VungleAds-7.7.2.zip",
            checksum: "992601fbf1bea916c14c898d6686800b53344f766ee45606fb91088d7a0eafa9"
        ),
        .binaryTarget(
            name: "REVUPMediaMax",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMax.zip",
            checksum: "9624ebe60290a5fb7737e3bf95fe2359cc577a33e382a07916fcf7982dfa511a"
        ),
        .binaryTarget(
            name: "AppLovinSDK",
            url: "https://artifacts.applovin.com/ios/com/applovin/applovin-sdk/AppLovinSDK-13.6.3.xcframework.zip",
            checksum: "a65e11de25a923c4cddb5b19e852ed65b59060bfcb9b6fa065c1a8d3deabf4ae"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBidMachine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterBidMachine.zip",
            checksum: "0ae03a9b3404add7b6eb41b9215660edd2e29be588970b6dea80ef98b1ffedd6"
        ),
        .binaryTarget(
            name: "AppLovinMediationBidMachineAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bidmachine-adapter/AppLovinMediationBidMachineAdapter-3.7.1.0.0.zip",
            checksum: "feff3dc198dd1ab4a6b160c9b4405de61099052efe062b679b6c0d0e971fe072"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://bidmachine-ios.s3.amazonaws.com/BidMachine/3.7.1/package/BidMachine.xcframework.zip",
            checksum: "a033bfaccb55467a1dda8012110534726dd59337f9203db47cfafe023d5b1271"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://bidmachine-ios.s3.amazonaws.com/OMSDK_Appodeal/1.6.3/package/OMSDK_Appodeal.xcframework.zip",
            checksum: "3e3f791957a55085954608740455c6abad2d1f4381e5a4263242289030f7976f"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigo",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterBigo.zip",
            checksum: "7c54b1e0b4c6cc404f00f7e164f437d52059141787009d38da8deed5bb262088"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "ed640fae4c7b04da121651e44b06081fdf58c821972b9af6e35d49ba9dc4f622"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/BigoADS.xcframework.zip",
            checksum: "9f8da4ea976fa459388b5b5c2c81e2709de35c146ab963886e19e0bd8c3a11bc"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterChartBoost.zip",
            checksum: "098ae2fc6ca3a3e1bf8402ac08951da9d5daf854c6da1f0a12f53199c3c2cebe"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "7c6c0a63ecc185069922b7b681f59b5d514b2e789518082f384fc23151b7fa91"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTExchange",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.1/REVUPMediaMaxAdapterDTExchange.zip",
            checksum: "a680b64d452fea7b4aeabbb05010dac9837d7c81cc7c842fb4fb933a547fbe2c"
        ),
        .binaryTarget(
            name: "AppLovinMediationFyberAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/fyber-adapter/AppLovinMediationFyberAdapter-8.4.7.0.zip",
            checksum: "eb779a6b34e8d19ebb5a1436a666332308cc559355c48063e6d202d0c850480b"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://cdn2.inner-active.mobi/fmp-sdk/files/DTExchangeSDK-iOS-SPM-8.4.7.zip",
            checksum: "aa435d0ed740ab025b5f5fe7e63fb6674ca71d1979cd95f6f7bd5b097c242ed0"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterFan",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterFan.zip",
            checksum: "ebb36030b0e2aa413cb829f15c2b732c2966f1ec8b6f06f52ff61332de83839d"
        ),
        .binaryTarget(
            name: "AppLovinMediationFacebookAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/facebook-adapter/AppLovinMediationFacebookAdapter-6.21.1.0.zip",
            checksum: "69069f3c153a9387a355a2e4e9ed322bcc4fcec7b0f5bc80fa9880e9c69c1ccb"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://developers.facebook.com/resources/FBAudienceNetwork-6.21.1-SPM.zip",
            checksum: "c8b3fa80b51d5511a0fe41039b924cc7eba7cbf47ca5cff67e89706034ce0316"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobi",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterInMobi.zip",
            checksum: "f89a22d937c7f3d692fefdb67d6a448b989b09dce5c508db0edd082b6f2e5a82"
        ),
        .binaryTarget(
            name: "AppLovinMediationInMobiAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/inmobi-adapter/AppLovinMediationInMobiAdapter-11.3.0.1.zip",
            checksum: "b460199258dd68d023e4d1bfb7e35bff904ea0690a741cfbe8a6df1d8405a247"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-Ads-SDK-SPM-11.3.0.zip",
            checksum: "82ee34f70fa91f61329dfa4702d45cdcb674a1d8f175549f0eb4bc9015bad416"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterIronSource.zip",
            checksum: "742347a867c43500986990bae354f8fbc73d4d710b0e13414e2e6b0c211d5ee6"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "00143662889262fdb4ee269c549c0032b542f2565b25efb44e6843086456477d"
        ),
        .binaryTarget(
            name: "IronSourceSDK",
            url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-sdk/master/9.4.0/IronSource9.4.0.zip",
            checksum: "6b6915e09e4738bf2badc03ba2b91a622fba4624dc2c084cd9b330c58def9133"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMobVista",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterMobVista.zip",
            checksum: "afce585cbfbc85b15c20c85e8c3bdf9a6b868933ce199cf7c8c9b23d4574afdf"
        ),
        .binaryTarget(
            name: "AppLovinMediationMintegralAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mintegral-adapter/AppLovinMediationMintegralAdapter-8.1.5.0.0.zip",
            checksum: "4b959deef680d4162ccd0653ed669fa7a6e0c7f5a27e52f6fd57be6bc3c757d7"
        ),
        .binaryTarget(
            name: "MTGSDK",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDK.xcframework.zip",
            checksum: "202de3c15b9968fbefd0074b66ce065797ed7d8541b60cd9e31f49dfcd16988a"
        ),
        .binaryTarget(
            name: "MTGSDKBanner",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKBanner.xcframework.zip",
            checksum: "1ce3deceb6d10f1c9bbd7084e4619d6dbc6c96d26285f637074dae601039ca70"
        ),
        .binaryTarget(
            name: "MTGSDKBidding",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKBidding.xcframework.zip",
            checksum: "5ae64415e3fdb1dabafac62a2f2f71e00fe8701cca7c6198e8119f5f6fa6ef65"
        ),
        .binaryTarget(
            name: "MTGSDKNewInterstitial",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKNewInterstitial.xcframework.zip",
            checksum: "bfa60fb9a24e889f39afe1be8491aea5ef01a6a616f784da0492c0e0593b5fb3"
        ),
        .binaryTarget(
            name: "MTGSDKInterstitialVideo",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKInterstitialVideo.xcframework.zip",
            checksum: "c6e97612cdf3160df4e9efa49eb16f37357dc600e007316113da792f13806685"
        ),
        .binaryTarget(
            name: "MTGSDKReward",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKReward.xcframework.zip",
            checksum: "dcf8377eebb918ac0601c0f311482fa36179f54d71cfe65bb4e37691e377ae52"
        ),
        .binaryTarget(
            name: "MTGSDKSplash",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKSplash.xcframework.zip",
            checksum: "c6b3b4eca66746eda886f3a7cb239d382cce6ca54a9aa18cd6b5a75cae1bf286"
        ),
        .binaryTarget(
            name: "MTGSDKNativeAdvanced",
            url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.5/MTGSDKNativeAdvanced.xcframework.zip",
            checksum: "8136df34b868246c08fbf2e0a32e2df81d274347902d2fb71b40742b80f43510"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMoloco",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterMoloco.zip",
            checksum: "bb35e6d7e66e9499ccc00576332afc0299d1d5e5fa1f78f7cda0bf1d699d672b"
        ),
        .binaryTarget(
            name: "AppLovinMediationMolocoAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/moloco-adapter/AppLovinMediationMolocoAdapter-4.8.1.0.zip",
            checksum: "8081560592cf75cf24acb168aafa288433b2f5c84dc63adee5fb0c7059e025a7"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://moloco-ios-build.s3.amazonaws.com/moloco-sdk/MolocoSDK-4.8.1.zip",
            checksum: "aaa1eb4cc09e42f14745b81cc9b384632bf204d5bc14895a8d6a5f2a6de9c0c2"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterOgury",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterOgury.zip",
            checksum: "032b2d061fc29e37c7c231a054ec7cebcc2e93ce34bfd2a2baaf9ffa8c9f4202"
        ),
        .binaryTarget(
            name: "AppLovinMediationOguryPresageAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ogurypresage-adapter/AppLovinMediationOguryPresageAdapter-5.2.3.0.zip",
            checksum: "c56c5aaa2ff0f15724aa5aa199ecb9d3f52bcaf1cb14f7276cb5747616a7b517"
        ),
        .binaryTarget(
            name: "OguryWrapper",
            url: "https://binaries.ogury.co/release/ios/5.2.3/OgurySdk-5.2.3.zip",
            checksum: "f9411c03065b9aa6fc03ac6ecef0e1c4be39e9bcada492c8be4bde569011b39a"
        ),
        .binaryTarget(
            name: "OguryAds",
            url: "https://binaries.ogury.co/release/ads-ios/4.2.2/OguryAds-4.2.2.zip",
            checksum: "c55c4cfddc0230230d3bba39e65c13bae1997b762991cdb09e514c06d8050d92"
        ),
        .binaryTarget(
            name: "OguryCore",
            url: "https://binaries.ogury.co/release/core-ios/2.2.1/OguryCore-2.2.1.zip",
            checksum: "c611cfe91a59e3d4c35d2851ec39907985635af4bcbfd6ccbb70b9821c518a42"
        ),
        .binaryTarget(
            name: "OMSDK",
            url: "https://binaries.ogury.co/release/omsdk-ios/1.5.7/OMSDK_Ogury-1.5.7.zip",
            checksum: "7adb6caa6359e5cf3efe5cd929628f4e67463179105e7e878db13761e40c7307"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMatic",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterPubMatic.zip",
            checksum: "59ba29938442ec371ac817faa8a129352cab2efab9edfb7001a7bb558961019b"
        ),
        .binaryTarget(
            name: "AppLovinMediationPubMaticAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/pubmatic-adapter/AppLovinMediationPubMaticAdapter-5.1.1.0.zip",
            checksum: "c722f785f79eee5c133fc14785865e274a549cb8dad90e8b3df474e650b8a07b"
        ),
        .binaryTarget(
            name: "OpenWrapSDK",
            url: "https://repo.pubmatic.com/artifactory/public-repos/ios/swift-pkg-manager/openwrapsdk/5.1.1/openwrapsdk-5.1.1.zip",
            checksum: "e525cd238e21673aaefbc137784ae4a4293d2139c759bbb7da44480ce63d6676"
        ),
        .binaryTarget(
            name: "OMSDK_Pubmatic",
            url: "https://repo.pubmatic.com/artifactory/public-repos/ios/swift-pkg-manager/omsdk-pubmatic/1.6.3/omsdk-pubmatic-1.6.3.zip",
            checksum: "4c80753222f11d508726ccf577cc891da66fbd8974ef970977dd6fcffc6c7022"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterVungle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterVungle.zip",
            checksum: "7ac2d5dd45384520c1925ea765dc3e8fa1b960be3d5e119cac5ad61941db3d4f"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "913825ce4316d442aeaf4f81d98f5dfe5558032e5c8edea7b08e375452eeeb0d"
        ),
    ]
)
