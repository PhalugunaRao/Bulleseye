
import SwiftUI

struct InstructionText: View {
    var text:String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .padding(.horizontal,30)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
        
    }
    
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
        
    }
    
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText(text:"demo")
        BigNumberText(text: "999")
        SliderLabelText(text: "1")
    }
}
