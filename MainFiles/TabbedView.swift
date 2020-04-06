//
//  TabbedView.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view is the inital view that is shown after the loading screen
//This view creates bottom navigational buttons that will reference each fo the main views.
struct TabbedView: View {
    var body: some View {
        TabView {
         
            HomeScreen().tabItem{
                Image(systemName: "house.fill")
                
                       Text("Home")
                   }
             FullMapScreen().tabItem{
                Image(systemName: "map.fill")
                     Text("Map")
                 }
             BarberScreen().tabItem{
                 Image(systemName: "magnifyingglass.circle.fill")
                    Text("Find Barber")
                }
               
             
        }.navigationBarTitle(Text("Snip Snap"))
        .accentColor(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
