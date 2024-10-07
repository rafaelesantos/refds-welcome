import SwiftUI

extension Bundle {
    var applicationIcon: Image? {
        guard let icons = infoDictionary?["CFBundleIcons"] as? Dictionary<String, Any>,
              let primary = icons["CFBundlePrimaryIcon"] as? Dictionary<String, Any>,
              let files = primary["CFBundleIconFiles"] as? Array<String>,
              let icon = files.last else { return nil }
        return .init(icon, bundle: self)
    }
    
    var applicationName: String? {
        return infoDictionary?["CFBundleDisplayName"] as? String
    }
}
