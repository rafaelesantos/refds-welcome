import Foundation

public protocol RefdsWelcomeViewDataProtocol: Sendable {
    var id: UUID { get }
    var header: RefdsWelcomeHeaderViewDataProtocol { get set }
    var features: [RefdsWelcomeFeatureViewDataProtocol] { get set }
    var footer: RefdsWelcomeFooterViewDataProtocol { get set }
}

public struct RefdsWelcomeViewData: RefdsWelcomeViewDataProtocol, Identifiable {
    public var id: UUID { .init() }
    public var header: RefdsWelcomeHeaderViewDataProtocol
    public var features: [RefdsWelcomeFeatureViewDataProtocol]
    public var footer: RefdsWelcomeFooterViewDataProtocol
    
    public init(
        header: RefdsWelcomeHeaderViewDataProtocol,
        features: [RefdsWelcomeFeatureViewDataProtocol],
        footer: RefdsWelcomeFooterViewDataProtocol
    ) {
        self.header = header
        self.features = features
        self.footer = footer
    }
}
