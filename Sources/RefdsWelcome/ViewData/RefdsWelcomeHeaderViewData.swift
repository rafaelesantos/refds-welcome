import SwiftUI

public protocol RefdsWelcomeHeaderViewDataProtocol {
    var applicationIcon: Image? { get }
    var introduceTitle: String { get set }
    var applicationTitle: String { get set }
    var description: String? { get set }
}

public struct RefdsWelcomeHeaderViewData {
    public var introduceTitle: String
    public var applicationTitle: String
    public var description: String?
    
    public init(
        introduceTitle: String,
        applicationTitle: String,
        description: String? = nil
    ) {
        self.introduceTitle = introduceTitle
        self.applicationTitle = applicationTitle
        self.description = description
    }
    
    public var applicationIcon: Image? {
        guard let icons = Bundle.main.object(forInfoDictionaryKey: "CFBundleIcons") as? [String: Any],
              let primaryIcon = icons["CFBundlePrimaryIcon"] as? [String: Any],
              let iconFiles = primaryIcon["CFBundleIconFiles"] as? [String],
              let iconFileName = iconFiles.last else { return nil }
        
        return Image(iconFileName, bundle: .main)
    }
}
