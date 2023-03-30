//
//  SfoImagesView.swift
//  Bulleseye
//
//  Created by ekincare on 30/03/23.
//

import SwiftUI

struct SfoImagesView: View {
    var body: some View {
        VStack{
            
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.monochrome)
                              .imageScale(.large)
                              .foregroundColor(.red)
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.multicolor)
                              .imageScale(.large)
                             
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.hierarchical)
                              .imageScale(.large)
                              
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.palette)
                              .imageScale(.large)
                              .foregroundStyle(.blue,.red)
            //            Label("Cloudy #1", systemImage: "cloud.sun")
            //                .symbolRenderingMode(.monochrome)
            //                .imageScale(.small)
            //                .foregroundColor(.red)
            //            Label("Cloudy #2", systemImage: "cloud.sun")
            //                .symbolRenderingMode(.multicolor)
            //                .imageScale(.medium)
            //
            //            Label("Cloudy #3", systemImage: "cloud.sun")
            //                .imageScale(.large)
            //        }
        }
        .padding()
        .font(.system(size: 20,weight: .bold))
        .symbolVariant(.fill)
        
    }
}

struct SfoImagesView_Previews: PreviewProvider {
    static var previews: some View {
        SfoImagesView()
    }
}
