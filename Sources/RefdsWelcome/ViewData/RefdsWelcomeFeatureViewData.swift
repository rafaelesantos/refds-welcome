import SwiftUI
import RefdsShared

public protocol RefdsWelcomeFeatureViewDataProtocol: Sendable {
    var icon: RefdsIconSymbol { get }
    var title: String { get }
    var description: String { get }
}

public struct RefdsWelcomeFeatureViewData: RefdsWelcomeFeatureViewDataProtocol {
    public var icon: RefdsIconSymbol
    public var title: String
    public var description: String
    
    public init(
        icon: RefdsIconSymbol,
        title: String,
        description: String
    ) {
        self.icon = icon
        self.title = title
        self.description = description
    }
}
