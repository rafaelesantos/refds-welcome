import SwiftUI

struct RefdsWelcomeHeaderView: View {
    private let viewData: RefdsWelcomeHeaderViewData
    
    init(viewData: RefdsWelcomeHeaderViewData) {
        self.viewData = viewData
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    if let applicationIcon = viewData.applicationIcon {
                        applicationIcon.resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                    Text(viewData.introduceTitle)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text(viewData.applicationTitle)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.accentColor)
                }
                
                if let description = viewData.description {
                    Text(description)
                }
            }
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    RefdsWelcomeHeaderView(viewData: .mock)
        .padding()
        .padding()
}
