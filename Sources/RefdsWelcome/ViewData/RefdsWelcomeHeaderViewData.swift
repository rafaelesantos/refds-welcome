import SwiftUI

public protocol RefdsWelcomeHeaderViewDataProtocol {
    var applicationIcon: Image { get set }
    var introduceTitle: String { get set }
    var applicationTitle: String { get set }
    var description: String? { get set }
}

public struct RefdsWelcomeHeaderViewData: RefdsWelcomeHeaderViewDataProtocol {
    public var applicationIcon: Image
    public var introduceTitle: String
    public var applicationTitle: String
    public var description: String?
    
    public init(
        applicationIcon: Image,
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
