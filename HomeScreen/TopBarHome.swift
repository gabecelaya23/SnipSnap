//
//  TopBarHome.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI

//This view is specifically for the top logo for the application

struct TopBarHome: View {
   @State var image = Image("circle-cropped");
    var body: some View {
        HStack(alignment: .bottom){
            Text("Snip")
        .font(.custom("AvenirNext-Heavy", size: 30))
        .foregroundColor(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
        .padding()
            
            
            image.resizable().frame(width: 55.0, height: 55.0)
                
            
            Text("Snap")
            .font(.custom("AvenirNext-Heavy", size: 30))
            .foregroundColor(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
            .padding()
    }
    
    }
}

struct TopBarHome_Previews: PreviewProvider {
    static var previews: some View {
        TopBarHome()
    }
}
