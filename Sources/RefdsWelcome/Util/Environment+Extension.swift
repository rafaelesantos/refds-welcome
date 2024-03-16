import SwiftUI

private struct RefdsWelcomeWidth: EnvironmentKey {
    static let defaultValue: CGFloat = 400
}

extension EnvironmentValues {
    public var refdsWelcomeWidth: CGFloat {
        get { self[RefdsWelcomeWidth.self] }
        set { self[RefdsWelcomeWidth.self] = newValue }
    }
}
