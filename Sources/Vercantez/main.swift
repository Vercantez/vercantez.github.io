import Foundation
import Publish
import Plot

struct Vercantez: Website {
    enum SectionID: String, WebsiteSectionID {
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://vercantez.com")!
    var name = "Vercantez"
    var description = "Personal blog of Miguel Salinas"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

try Vercantez().publish(
        withTheme: .vercantez,
        deployedUsing: .gitHub("Vercantez/vercantez.github.io", useSSH: false)
    )
