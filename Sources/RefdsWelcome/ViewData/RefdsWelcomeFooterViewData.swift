import Foundation

public protocol RefdsWelcomeFooterViewDataProtocol: Sendable {
    var detail: String? { get set }
    var buttonTitle: String { get set }
}

public struct RefdsWelcomeFooterViewData: RefdsWelcomeFooterViewDataProtocol {
    public var detail: String?
    public var buttonTitle: String
    
    public init(
        detail: String? = nil,
        buttonTitle: String
    ) {
        self.detail = detail
        self.buttonTitle = buttonTitle
    }
}
