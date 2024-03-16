import SwiftUI

public struct RefdsWelcomeFeatureViewData {
    public var icon: Image
    public var title: String
    public var description: String
    public var action: (() -> Void)?
    
    public init(
        icon: Image,
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
