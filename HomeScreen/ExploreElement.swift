//
//  ExploreElement.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI

//This view is a button view that will allow the user to go straight to the barbers view
//Used for a quick switch to the important view of finding a barber

struct ExploreElement: View {
    @State var switchView = false
   var body: some View {
        VStack {
            Text("Schedule Appointments").font(.headline).bold().padding(.bottom, 5)
             Text("Explore a Truck for you").font(.subheadline).padding(.bottom, 20)
            Button(action: {self.switchView.toggle()}) {
                ///
                if switchView{
                    BarberScreen()
                }
                
                ///
                Image(systemName: "magnifyingglass.circle.fill")
                Text("Search").font(.custom("AvenirNext-Heavy", size: 12))
            }.frame(width: 250, height: 45, alignment: .center)
                .background(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
                .foregroundColor(Color.white)
            .cornerRadius(9)
            .shadow(radius: 15)
        }.frame(width: 375, height: 200).background(Color(red: 201/255, green: 208/255, blue: 215/255, opacity: 1.0))
        .cornerRadius(10)
    }
}

struct ExploreElement_Previews: PreviewProvider {
    static var previews: some View {
        ExploreElement()
    }
}
