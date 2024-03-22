import SwiftUI

public struct RefdsWelcomeHeaderViewData {
    public var applicationIcon: (() -> any View)?
    public var introduceTitle: String
    public var applicationTitle: String
    public var description: String?
    
    init(
        applicationIcon: (() -> any View)? = nil,
        introduceTitle: String,
        applicationTitle: String,
        description: String? = nil
    ) {
        self.applicationIcon = applicationIcon
        self.introduceTitle = introduceTitle
        self.applicationTitle = applicationTitle
        self.description = description
    }
}
