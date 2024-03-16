import Foundation

public struct RefdsWelcomeFooterViewData {
    public var detail: String?
    public var buttonTitle: String
    public var buttonAction: (() -> Void)?
    
    public init(
        detail: String? = nil,
        buttonTitle: String,
        buttonAction: (() -> Void)? = nil
    ) {
        self.detail = detail
        self.buttonTitle = buttonTitle
        self.buttonAction = buttonAction
    }
}
