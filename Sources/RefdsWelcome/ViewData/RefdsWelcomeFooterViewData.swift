import Foundation

public protocol RefdsWelcomeFooterViewDataProtocol {
    var detail: String? { get set }
    var buttonTitle: String { get set }
    var action: (() -> Void)? { get set }
}

public struct RefdsWelcomeFooterViewData: RefdsWelcomeFooterViewDataProtocol {
    public var detail: String?
    public var buttonTitle: String
    public var action: (() -> Void)?
    
    public init(
        detail: String? = nil,
        buttonTitle: String,
        action: (() -> Void)? = nil
    ) {
        self.detail = detail
        self.buttonTitle = buttonTitle
        self.action = action
    }
}
