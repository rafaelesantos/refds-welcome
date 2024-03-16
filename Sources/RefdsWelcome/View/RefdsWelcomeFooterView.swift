import SwiftUI

struct RefdsWelcomeFooterView: View {
    private let viewData: RefdsWelcomeFooterViewData
    
    init(viewData: RefdsWelcomeFooterViewData) {
        self.viewData = viewData
    }
    
    var body: some View {
        VStack(spacing: 20) {
            if let detail = viewData.detail {
                Text(detail)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            Button { viewData.buttonAction?() } label: {
                Text(viewData.buttonTitle)
                    .foregroundStyle(.white)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.accentColor)
                    .clipShape(.rect(cornerRadius: 15))
            }
        }
        .padding()
        .padding()
        .background()
    }
}

#Preview {
    RefdsWelcomeFooterView(viewData: .mock)
}
