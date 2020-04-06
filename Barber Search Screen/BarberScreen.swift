//
//  BarberScreen.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view creates the full Barber screen that implements all of the elements in the Barber Search Screen.
struct BarberScreen: View {
   
@State var profile:Profile
@State var arrayProfile = ProfileListViewModel().profiles
    
    var body: some View {
        NavigationView{
                   
               List() {
                   Section( header: Sectionals4()){
                       //This view creates a scrollable view that can be horizontal or vertical
                   ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top){
                        ForEach(0 ..< arrayProfile.count){ item in
                            NavigationLink(destination: BarberPage(profile: self.profile, profileArray: [self.arrayProfile[item]])){
                                BarberContent(profile: self.profile, profileArray: [self.arrayProfile[item]])
                                }
                            }
                        }
                    }
                    
                    Section(header: Sectionals5()){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top){
                            ForEach(0 ..< arrayProfile.count){ item in
                                NavigationLink(destination: BarberPage(profile: self.profile, profileArray: [self.arrayProfile[item]])){
                                    BarberContent(profile: self.profile, profileArray: [self.arrayProfile[item]])
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

