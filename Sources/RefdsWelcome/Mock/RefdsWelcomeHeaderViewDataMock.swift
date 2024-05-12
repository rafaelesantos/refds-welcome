import SwiftUI
import RefdsUI
import RefdsShared

public struct RefdsWelcomeHeaderViewDataMock: RefdsWelcomeHeaderViewDataProtocol {
    public var applicationIcon: Image = RefdsAsset.applicationIcon.image
    public var introduceTitle: String = .refdsLocalizable(by: .welcomeIntroduction)
    public var applicationTitle: String = .someWord()
    public var description: String? = .someParagraph()
    
    public init() {}
}
