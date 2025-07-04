// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TesseractOCRiOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "TesseractOCRiOS", targets: ["TesseractOCRiOS"])
    ],
    targets: [
        .target(
            name: "TesseractOCRiOS",
            path: "TesseractOCR",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("include"),
                .define("HAVE_CONFIG_H", to: "1")
            ]
        )
    ]
)
