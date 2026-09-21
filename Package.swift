// swift-tools-version:5.3
import PackageDescription

// likey-ios 용 포크입니다. 업스트림(kizitonwose/CountryPickerView)은 2021-10 이후 멈춰 있고
// platforms 선언이 없어 배포 타겟이 툴체인 기본값으로 고정됩니다. Tuist 가 생성하는 리소스 번들
// 타겟은 PackageSettings 로 덮이지 않아 이 매니페스트로만 배포 타겟을 올릴 수 있습니다.
// 원본과의 차이는 아래 platforms 한 줄뿐입니다.
//
// 이 파일은 독립 매니페스트라 likey-ios 의 Environment.minimumIOSVersion 을 참조하지 못합니다.
// 앱 최소 버전을 올릴 때 여기도 함께 고치고 새 태그를 만들어야 합니다.
let package = Package(
    name: "CountryPickerView",
    platforms: [.iOS("17.0")],
    products: [
        .library(name: "CountryPickerView", targets: ["CountryPickerView"])
    ],
    targets: [
        .target(
            name: "CountryPickerView",
            path: "CountryPickerView",
            resources: [
            .process("Resources")]
        )
    ]
)
