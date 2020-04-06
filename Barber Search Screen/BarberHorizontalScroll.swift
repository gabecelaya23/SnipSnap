//
//  BarberHorizontalScroll.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view creates the horizontal scrollable view for the Barber Screen
struct BarberHorizontalScroll: View {
    @State var profileArray = ProfileListViewModel().profiles
    @State var profile:Profile
    var body: some View {
        ScrollView(){
                HStack(alignment: .top){
                    ForEach(0 ..< profileArray.count){ item in
                        BarberContent(profile: self.profile, profileArray: [self.profileArray[item]])
                        }
                   }.frame(width: 1000, height: 250)
            
        }
    }
}

