import SwiftUI
import RefdsUI
import RefdsShared

public struct RefdsWelcomeFeatureViewDataMock: RefdsWelcomeFeatureViewDataProtocol {
    public var icon: RefdsIconSymbol = .random
    public var title: String = .someWord()
    public var description: String = .someParagraph()
    public var action: (@Sendable () async -> Void)?
    
    public init() {}
}
