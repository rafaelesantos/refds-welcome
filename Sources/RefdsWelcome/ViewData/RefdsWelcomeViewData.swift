import Foundation

public struct RefdsWelcomeViewData: Identifiable {
    public var id: UUID
    public var header: RefdsWelcomeHeaderViewData
    public var features: [RefdsWelcomeFeatureViewData]
    public var footer: RefdsWelcomeFooterViewData
    
    public init(
        header: RefdsWelcomeHeaderViewData,
        features: [RefdsWelcomeFeatureViewData],
        footer: RefdsWelcomeFooterViewData
    ) {
        self.id = .init()
        self.header = header
        self.features = features
        self.footer = footer
    }
}
