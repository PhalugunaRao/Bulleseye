//
//  LayoutViews.swift
//  Bulleseye
//
//  Created by ekincare on 01/04/23.
//

import SwiftUI

struct LayoutViews: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .frame(width: 200,height: 250,alignment: .topLeading)
        //            .background(.mint)
        
        
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .frame(
        //                maxWidth:.infinity,
        //                maxHeight:.infinity,
        //                alignment:.topLeading)
        //            .background(.mint)
        //            .clipped()
        
        
        
        //        VStack{
        //            Text("Hello world")
        //        }
        //        .frame(maxWidth:.infinity,
        //                             maxHeight:100,
        //               alignment:.topLeading).background(.mint).clipped()
        
        
        Image("Image")
            .resizable()
            .frame(width: 100,height: 100)
            .clipShape(Circle())
            .overlay(alignment: .bottomTrailing){
                Text("New Video")
                    .foregroundColor(.white)
                    .bold()
                    .font(.callout)
                    .padding(.vertical,4)
                    .padding(.horizontal,8)
                    .background(.red)
                    .clipShape(Capsule())
            }
        
    
    }
}

struct LayoutViews_Previews: PreviewProvider {
    static var previews: some View {
        LayoutViews()
    }
}
