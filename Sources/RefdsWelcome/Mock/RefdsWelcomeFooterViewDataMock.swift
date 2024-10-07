import Foundation

public struct RefdsWelcomeFooterViewDataMock: RefdsWelcomeFooterViewDataProtocol {
    public var detail: String? = .someParagraph()
    public var buttonTitle: String = .someWord()
    public var action: (@Sendable () async -> Void)?
    
    public init() {}
}
