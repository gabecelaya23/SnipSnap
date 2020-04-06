//
//  Sections.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This file is full of graphic views to seperate each section of the application.
struct Sections: View {
   var body: some View {
            HStack {
               Text("--------------")
                      Image(systemName: "scissors").rotationEffect(.degrees(180))
                      Text("Featured")
               Image(systemName: "scissors")
                Text("---------------")
                  }
       }
}
struct Sections2: View{
    
    var body: some View{
        HStack {
                   Text("--------------")
                          Image(systemName: "scissors").rotationEffect(.degrees(180))
                          Text("Schedule")
                   Image(systemName: "scissors")
                    Text("--------------")
                      }
    }
}
struct Sections3: View{
    
    var body: some View{
        HStack {
                   Text("--------------")
                          Image(systemName: "scissors").rotationEffect(.degrees(180))
                          Text("Barbers")
                   Image(systemName: "scissors")
                    Text("---------------")
                      }
    }
}
struct Sectionals4: View{
    
    var body: some View{
        HStack {
                   Text("----------")
                          Image(systemName: "scissors").rotationEffect(.degrees(180))
                          Text("Barbers Near You")
                   Image(systemName: "scissors")
                    Text("----------")
                      }
    }
}
struct Sectionals5: View{
    
    var body: some View{
        HStack {
                   Text("-------------")
                          Image(systemName: "scissors").rotationEffect(.degrees(180))
                          Text("All Barbers")
                   Image(systemName: "scissors")
                    Text("-------------")
                      }
    }
}

struct Sections_Previews: PreviewProvider {
    static var previews: some View {
        Sections()
    }
}
