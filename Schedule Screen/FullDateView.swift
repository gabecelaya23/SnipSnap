//
//  FullDateView.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view combines all of the date elements to create the schedule view.
struct FullDateView: View {
    
    @ObservedObject var dateController = DateStructureModel()
    
    var body: some View {
        VStack {
                   Text("Please choose an available date.").font(.title).bold()
                   ScrollView(.horizontal, showsIndicators: false, content: {
                       HStack(spacing: 10) {
                        //This loop is a specific loop in Swift that allows the user to loop through each element in a specific array.
                           ForEach(dateController.listOfValidDates, id: \.self) { date in
                               DateView(date: date).onTapGesture {
                                   
                                   self.dateController.toggleIsSelected(date: date)
                               }
                               
                           }
                           
                       }
                       
                   })
                   HStack {
                       Text("Your scheduled date is: ")
                       Text("\(self.dateController.selectedDate)").foregroundColor(.red).bold()
                   }.padding(.top, 20)
        //This button will allow the user to submit their date back to the business profile user. 
            Button(action: {HomeScreen()}) {
                HStack{
                        
                          Text("Sumbit")
                    Image(systemName: "paperplane")
                }
                }.frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(Color.orange)
        .cornerRadius(40)
            .padding(.top, 50)
                   Spacer()
            
          
               }.padding().padding(.top, 30)
    }
}

struct FullDateView_Previews: PreviewProvider {
    static var previews: some View {
        FullDateView()
    }
}
