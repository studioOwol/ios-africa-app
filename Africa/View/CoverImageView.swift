//
//  CoverImageView.swift
//  Africa
//
//  Created by Nahyun on 2023/04/20.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Property
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    //MARK: - Body
    
    var body: some View {
        
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
