import SwiftUI

private struct RefdsWelcomeDemo: View {
    @State private var isLoading = false
    @State private var viewData: RefdsWelcomeViewData?
    
    private var headerViewData: RefdsWelcomeHeaderViewData = .mock
    
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
        .refdsWelcome(item: $viewData)
    }
    
    private func testSplash() {
        isLoading.toggle()
        wait(seconds: 2) {
            isLoading.toggle()
        }
    }
    
    private func testWelcome() {
        viewData = .mock
        wait(seconds: 5) {
            viewData = nil
        }
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
    RefdsWelcomeDemo()
}
