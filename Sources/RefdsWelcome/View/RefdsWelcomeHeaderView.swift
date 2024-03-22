import SwiftUI
import RefdsUI

struct RefdsWelcomeHeaderView: View {
    private let viewData: RefdsWelcomeHeaderViewData
    
    init(viewData: RefdsWelcomeHeaderViewData) {
        self.viewData = viewData
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: .padding(.large)) {
                VStack(alignment: .leading) {
                    if let applicationIcon = viewData.applicationIcon {
                        AnyView(applicationIcon())
                    }
                    
                    RefdsText(
                        viewData.introduceTitle,
                        style: .largeTitle,
                        weight: .heavy
                    )
                    
                    RefdsText(
                        viewData.applicationTitle,
                        style: .largeTitle,
                        color: .accentColor,
                        weight: .heavy
                    )
                }
                
                if let description = viewData.description {
                    RefdsText(description)
                }
            }
            Spacer(minLength: .zero)
        }
    }
}

#Preview {
    RefdsWelcomeHeaderView(viewData: .mock)
        .padding(.padding(.extraLarge))
}
