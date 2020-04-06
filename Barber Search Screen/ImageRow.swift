//
//  ImageRow.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This is a graphic element for the Barber Page displaying the three images each barber has.
struct ImageRow: View {
    @State var profileImages = ProfileListViewModel().profiles
    @State var profile:Profile
    var body: some View {
           ScrollView(){
                         HStack(alignment: .top){
                            Image(profile.image1).resizable()
                             .frame(width: 140, height: 140, alignment: .center)
                             Image(profile.image2).resizable()
                             .frame(width: 140, height: 140, alignment: .center)
                             Image(profile.image3).resizable()
                             .frame(width: 140, height: 140, alignment: .center)
                 }.frame(width: 1000, height: 250)
             }
    }
}

