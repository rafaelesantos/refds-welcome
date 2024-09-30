import Foundation

public struct RefdsWelcomeViewDataMock: RefdsWelcomeViewDataProtocol, Identifiable {
    public var id: UUID { .init() }
    public var header: RefdsWelcomeHeaderViewDataProtocol = RefdsWelcomeHeaderViewDataMock()
    public var features: [RefdsWelcomeFeatureViewDataProtocol] = (1 ... 5).map { _ in RefdsWelcomeFeatureViewDataMock() }
    public var footer: RefdsWelcomeFooterViewDataProtocol = RefdsWelcomeFooterViewDataMock()
    
    public init() {}
}
