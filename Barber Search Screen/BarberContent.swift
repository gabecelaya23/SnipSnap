//
//  BarberContent.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view creates a structure for how the babers will be displayed in a horizontal view.
struct BarberContent: View {
    @State var profile:Profile
    @State var profileArray = ProfileListViewModel().profiles
    
    var body: some View {
        VStack(alignment: .center, spacing: 16.0){
            Image(profile.shop).resizable().renderingMode(.original).aspectRatio(contentMode: .fill).frame(width: 300, height:170).cornerRadius(10).shadow(radius: 10)
             
             VStack(alignment: .leading, spacing: 5.0){
                Text(profile.name).font(.headline)
                     .foregroundColor(.primary)
                 
                Text(profile.description).font(.subheadline).foregroundColor(.secondary).multilineTextAlignment(.leading).lineLimit(2).frame( height: 40 )
        
             }
         }.frame(width: 350)
    }
}


