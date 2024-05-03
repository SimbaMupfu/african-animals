//
//  CoverView.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/03.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView{
            ForEach(coverImages){ coverImage in
                Image(coverImage.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
