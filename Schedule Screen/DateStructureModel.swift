//
//  DateStructureModel.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation

//This class models the date structure and creates the dates for the schedule view.
class DateStructureModel: ObservableObject {
    @Published private(set) var listOfValidDates: [DateStructure] = []
    @Published private(set) var selectedDate = ""
    
    init() {
        getDates()
    }
    //This function is a toggle that indicates when the user selects a date.
    func toggleIsSelected(date: DateStructure) {
        guard let oldIndex = self.listOfValidDates.firstIndex(where: {$0.isSelected}) else { return }
        listOfValidDates[oldIndex].isSelected = false
        guard let index = self.listOfValidDates.firstIndex(of: date) else { return }
        listOfValidDates[index].isSelected.toggle()
        selectedDate = listOfValidDates[index].monthAsString + " " + "\(listOfValidDates[index].day)"
    }
    //This function creates the dates used for the final schedule view
    //getDates function will take the day that is current and add a few days to the date selector.
    private func getDates() {
        let currentDate = Date()
        
        //guard let minDate = Calendar.current.date(byAdding: .day, value: -5, to: currentDate) else { return }
        let minDate = Date()
        guard let maxDate = Calendar.current.date(byAdding: .day, value: 7, to: currentDate) else { return }
        let dateChange = Calendar.current.dateComponents([.day], from: minDate, to: maxDate).day!
        
        var counter = 0
        
        while counter <= dateChange {
            guard let newDate = Calendar.current.date(byAdding: .day, value: counter, to: minDate) else { return }
            var objectToAddInDate = DateStructure()
            let day = Calendar.current.component(.day, from: newDate)
            objectToAddInDate.day = day
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "LLL"
            
            let month = dateFormatter.string(from: newDate)
            objectToAddInDate.monthAsInt = Calendar.current.component(.month, from: newDate)
            objectToAddInDate.monthAsString = month
            objectToAddInDate.year = Calendar.current.component(.year, from: newDate).description
            
            counter = counter + 1
            
            if (day == Calendar.current.component(.day, from: Date()) && month == dateFormatter.string(from: Date())) {
                objectToAddInDate.isSelected = true
            }
            let todayDate = Calendar.current.component(.day, from: Date())
            let todayMonth = dateFormatter.string(from: Date())
            self.selectedDate = todayMonth + " " + "\(todayDate)"
            self.listOfValidDates.append(objectToAddInDate)
        }
        
       
    }
}
