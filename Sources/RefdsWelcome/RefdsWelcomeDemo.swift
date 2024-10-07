import SwiftUI

private struct RefdsWelcomeDemo: View {
    @State private var isLoading = false
    @State private var viewData: RefdsWelcomeViewDataMock?
    
    private var headerViewData: RefdsWelcomeHeaderViewDataProtocol = RefdsWelcomeHeaderViewDataMock()
    private let action: (RefdsWelcomeActionType) -> Void
    
    init(action: @escaping (RefdsWelcomeActionType) -> Void) {
        self.action = action
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Button { testSplash() } label: {
                Text(RefdsWelcomeDemoFeature.splash.title)
            }
            
            Button { testWelcome() } label: {
                Text(RefdsWelcomeDemoFeature.welcome.title)
            }
        }
        .refdsWelcomeSplash(when: $isLoading, viewData: headerViewData)
        .refdsWelcome(item: $viewData, action: action)
    }
    
    private func testSplash() {
        isLoading.toggle()
        wait(seconds: 2) {
            isLoading.toggle()
        }
    }
    
    private func testWelcome() {
        viewData = RefdsWelcomeViewDataMock()
    }
    
    private func wait(
        seconds: CGFloat,
        completion: @escaping () -> Void
    ) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
}

private enum RefdsWelcomeDemoFeature {
    case splash
    case welcome
    
    var title: String {
        switch self {
        case .splash: return "Run test for Splash"
        case .welcome: return "Run test for Welcome"
        }
    }
}

#Preview {
    RefdsWelcomeDemo { _ in }
}
