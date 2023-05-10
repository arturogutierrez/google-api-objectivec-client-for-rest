// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "GoogleAPIClientForREST",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .tvOS(.v10),
        .watchOS(.v6)
    ],
    products: [
        // The main library, only thing you need to use your own services.
        .library(
            name: "GoogleAPIClientForRESTCore",
            targets: ["GoogleAPIClientForRESTCore"]
        ),
        // Products for all the Services.
        .library(
            name: "GoogleAPIClientForREST_Drive",
            targets: ["GoogleAPIClientForREST_Drive"]
        ),
        .library(
            name: "GoogleAPIClientForREST_DriveActivity",
            targets: ["GoogleAPIClientForREST_DriveActivity"]
        ),
        .library(
            name: "GoogleAPIClientForREST_DriveLabels",
            targets: ["GoogleAPIClientForREST_DriveLabels"]
        ),
        .library(
            name: "GoogleAPIClientForREST_Forms",
            targets: ["GoogleAPIClientForREST_Forms"]
        ),
        // End of products.
    ],
    dependencies: [
        .package(url: "https://github.com/google/gtm-session-fetcher.git", "1.6.1" ..< "4.0.0"),
    ],
    targets: [
        .target(
            name: "GoogleAPIClientForRESTCore",
            dependencies: ["GTMSessionFetcherFull"],
            path: "Sources/Core",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "GoogleAPIClientForREST_Drive",
            dependencies: ["GoogleAPIClientForRESTCore"],
            path: "Sources/GeneratedServices/Drive",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "GoogleAPIClientForREST_DriveActivity",
            dependencies: ["GoogleAPIClientForRESTCore"],
            path: "Sources/GeneratedServices/DriveActivity",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "GoogleAPIClientForREST_DriveLabels",
            dependencies: ["GoogleAPIClientForRESTCore"],
            path: "Sources/GeneratedServices/DriveLabels",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "GoogleAPIClientForREST_Forms",
            dependencies: ["GoogleAPIClientForRESTCore"],
            path: "Sources/GeneratedServices/Forms",
            publicHeadersPath: "Public"
        )
    ]
)
