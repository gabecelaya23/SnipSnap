//
//  URLImage.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This creates an alternative image view strictly for url images
//By using the image loader, this file will display the image.
struct URLImage: View {
   @ObservedObject var imageLoader:ImageLoader
    @State var image:UIImage = UIImage()
    
    
    init(withURL url:String) {
        imageLoader = ImageLoader(urlString:url)
    
    }
    
    var body: some View{
        VStack{
            Image(uiImage: image).resizable().renderingMode(.original).aspectRatio(contentMode: .fill).frame(width: 375, height:200).cornerRadius(10).shadow(radius: 10)
        }.onReceive(imageLoader.didChange) { data in self.image = UIImage(data: data) ?? UIImage()}
            
        }
}


