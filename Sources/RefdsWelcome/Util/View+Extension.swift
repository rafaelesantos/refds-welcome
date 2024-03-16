import SwiftUI

extension View {
    public func refdsWelcomeSplash(
        when isLoading: Binding<Bool>,
        viewData: RefdsWelcomeHeaderViewData
    ) -> some View {
        self.fullScreenCover(isPresented: isLoading) {
            RefdsWelcomeSplashScreen(
                isLoading: isLoading.wrappedValue,
                viewData: viewData
            )
        }
    }
    
    public func refdsWelcome(item: Binding<RefdsWelcomeViewData?>) -> some View {
        self.fullScreenCover(item: item) { viewData in
            RefdsWelcomeScreen(viewData: viewData)
        }
    }
}
