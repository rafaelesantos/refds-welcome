import SwiftUI

extension View {
    public func refdsWelcomeSplash(
        when isLoading: Binding<Bool>,
        viewData: RefdsWelcomeHeaderViewDataProtocol
    ) -> some View {
        self.sheet(isPresented: isLoading) {
            RefdsWelcomeSplashScreen(
                isLoading: isLoading.wrappedValue,
                viewData: viewData
            )
        }
    }
    
    public func refdsWelcome<T>(
        item: Binding<T?>,
        action: @escaping (RefdsWelcomeActionType) -> Void
    ) -> some View where T: RefdsWelcomeViewDataProtocol & Identifiable {
        self.sheet(item: item) { viewData in
            RefdsWelcomeScreen(
                viewData: viewData,
                action: action
            )
        }
    }
}
