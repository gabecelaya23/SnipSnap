//
//  DateView.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI

//This view creates the framework for one date element
struct DateView: View {
    
     var date: DateStructure
    
    var body: some View {
          ZStack {
                  Rectangle().fill(Color.white).cornerRadius(10).shadow(color: date.isSelected ? .green :.orange, radius: 5, x: 1, y: 1).frame(width: 116, height: 116)
                  VStack {
                      
                      Text(self.date.monthAsString).font(.title)
                      Text("\(self.date.day)").font(.title)
                  }
                  
              }.padding(2)
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView(date: DateStructure())
    }
}
