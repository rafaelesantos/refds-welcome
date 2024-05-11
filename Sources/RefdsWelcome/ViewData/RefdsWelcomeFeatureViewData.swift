import SwiftUI
import RefdsShared

public protocol RefdsWelcomeFeatureViewDataProtocol {
    var icon: RefdsIconSymbol { get set }
    var title: String { get set }
    var description: String { get set }
    var action: (() -> Void)? { get set }
}

public struct RefdsWelcomeFeatureViewData: RefdsWelcomeFeatureViewDataProtocol {
    public var icon: RefdsIconSymbol
    public var title: String
    public var description: String
    public var action: (() -> Void)?
    
    public init(
        icon: RefdsIconSymbol,
        title: String,
        description: String,
        action: (() -> Void)? = nil
    ) {
        self.icon = icon
        self.title = title
        self.description = description
        self.action = action
    }
}
