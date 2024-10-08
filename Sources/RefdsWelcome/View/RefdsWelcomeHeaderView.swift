import SwiftUI
import RefdsUI

struct RefdsWelcomeHeaderView: View {
    private let viewData: RefdsWelcomeHeaderViewDataProtocol
    
    init(viewData: RefdsWelcomeHeaderViewDataProtocol) {
        self.viewData = viewData
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: .small) {
            viewData.applicationIcon
                .resizable()
                .scaledToFit()
                .frame(width: 55)
                .clipShape(.rect(cornerRadius: 55 * 0.216))
            
            VStack(alignment: .leading) {
                RefdsText(
                    viewData.introduceTitle,
                    style: .largeTitle,
                    weight: .black
                )
                
                RefdsText(
                    viewData.applicationTitle,
                    style: .largeTitle,
                    color: .accentColor,
                    weight: .black
                )
            }
            
            if let description = viewData.description {
                RefdsText(description, color: .secondary)
            }
        }
    }
}

#Preview {
    RefdsWelcomeHeaderView(viewData: RefdsWelcomeHeaderViewDataMock())
        .padding(.horizontal, .extraLarge)
}
