import SwiftUI
import RefdsUI

public struct RefdsWelcomeScreen: View {
    @Environment(\.refdsWelcomeWidth) private var refdsWelcomeWidth
    
    private let viewData: RefdsWelcomeViewData
    
    public init(viewData: RefdsWelcomeViewData) {
        self.viewData = viewData
    }
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(spacing: 60) {
                    RefdsWelcomeHeaderView(viewData: viewData.header)
                    RefdsWelcomeFeaturesView(viewData: viewData.features)
                    RefdsWelcomeFooterView(viewData: viewData.footer)
                        .opacity(.zero)
                        .padding(.top, -60)
                }
                .padding(.padding(.extraLarge))
            }
            .scrollIndicators(.hidden)
            
            RefdsWelcomeFooterView(viewData: viewData.footer)
        }
        .frame(maxWidth: refdsWelcomeWidth)
    }
}

#Preview {
    RefdsWelcomeScreen(viewData: .mock)
}
