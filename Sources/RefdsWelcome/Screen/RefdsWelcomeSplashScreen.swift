import SwiftUI
import RefdsUI

public struct RefdsWelcomeSplashScreen: View {
    @Environment(\.refdsWelcomeWidth) private var refdsWelcomeWidth
    
    private let isLoading: Bool
    private let viewData: RefdsWelcomeHeaderViewData
    
    init(isLoading: Bool, viewData: RefdsWelcomeHeaderViewData) {
        self.isLoading = isLoading
        self.viewData = viewData
    }
    
    public var body: some View {
        HStack {
            Spacer(minLength: .zero)
            VStack(spacing: 60) {
                Spacer()
                RefdsWelcomeHeaderView(viewData: viewData)
                if isLoading { RefdsLoadingView() }
                Spacer()
            }
            Spacer(minLength: .zero)
        }
        .frame(maxWidth: refdsWelcomeWidth)
        .padding(.padding(.extraLarge))
    }
}

#Preview {
    RefdsWelcomeSplashScreen(
        isLoading: true,
        viewData: .mock
    )
}
