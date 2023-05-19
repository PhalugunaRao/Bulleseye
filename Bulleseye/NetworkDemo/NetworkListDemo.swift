//
//  NetworkListDemo.swift
//  Bulleseye
//
//  Created by ekincare on 18/05/23.
//

import SwiftUI

struct NetworkListDemo: View {
    
    @ObservedObject var fetcher = PostFetcher()
    var body: some View {
        List(fetcher.posts){ post in
            VStack{
                Text(post.title)
                    .font(.headline)
                    .padding()
                Text(post.body)
                    .font(.body)
                    .padding()
            }
            
        }
    }
}

struct NetworkListDemo_Previews: PreviewProvider {
    static var previews: some View {
        NetworkListDemo()
    }
}
