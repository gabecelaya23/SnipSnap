//
//  RateView.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This view creates a rating system for the BarberPage.
struct RateView: View {
    
    @State var rating:Int
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack{
        if label.isEmpty == false{
            Text(label)
        }
        
        ForEach(1..<maximumRating + 1) { number in
            self.image(for: number).foregroundColor(number > self.rating ? self.offColor : self.onColor).onTapGesture {
                self.rating = number
            }
        }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else{
            return onImage
        }
    }
}

struct RateView_Previews: PreviewProvider {
    static var previews: some View {
        RateView(rating: 4)
    }
}
