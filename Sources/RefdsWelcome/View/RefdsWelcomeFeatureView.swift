import SwiftUI

struct RefdsWelcomeFeatureView: View {
    private let viewData: RefdsWelcomeFeatureViewData
    
    init(viewData: RefdsWelcomeFeatureViewData) {
        self.viewData = viewData
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            viewData.icon
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
            VStack(alignment: .leading) {
                Text(viewData.title)
                    .font(.system(.body, weight: .bold))
                Text(viewData.description)
                    .font(.system(.body, weight: .light))
            }
            Spacer(minLength: 0)
        }
        .onTapGesture { viewData.action?() }
    }
}

#Preview {
    RefdsWelcomeFeatureView(viewData: .mock)
        .padding()
        .padding()
}
