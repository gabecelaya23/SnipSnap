//
//  BarberPage.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view is what customers will see when they select on one of the barbers.
struct BarberPage: View {
    @State var profile: Profile
    @State var profileArray = ProfileListViewModel().profiles
    var body: some View {
        //The navigational view acts as a button to move into the FullDateView
        NavigationView{
                  VStack(){
                      Image(profile.shop).resizable()
                      .frame(width: 420, height: 300, alignment: .center)
                      ImageRow().padding().frame(height: 300, alignment: .center).padding(.top, -70)
                      Text(profile.description).frame(width: 400, height: 100).padding(.bottom, 30).padding(.top, -70)
                      
                      NavigationLink(destination: FullDateView()){
                          Text("Request Appointment").frame(width: 200, height: 75, alignment: .center).background(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
                              .foregroundColor(Color.white)
                              .cornerRadius(9)
                              .shadow(radius: 15)
                              .padding(.bottom, 15)
                                                          }
                      RateView(rating: 4).shadow(radius: 8).padding(.bottom, 105)
                  }.navigationBarTitle(Text(profile.name).font(.custom("AvenirNext-Heavy", size: 30)), displayMode: .inline)
              }
    }
}


