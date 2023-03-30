

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .frame(width: 56 , height: 56)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),lineWidth: 2)
            )
    }
}

struct RoundedImageViewFilled: View{
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .frame(width: 56 , height: 56)
    }
}
struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10){
            RoundedImageViewFilled(systemName: "arrow.counterclockwise")
            RoundedImageViewStroked(systemName: "list.dash")
        }
    }
}
