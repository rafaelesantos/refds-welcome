import SwiftUI

public struct RefdsWelcomeHeaderViewData {
    public var applicationIcon: Image?
    public var introduceTitle: String
    public var applicationTitle: String
    public var description: String?
    
    init(
        applicationIcon: Image? = nil,
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
