//
//  SplashScreen.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

//EXPLANATION:
//This SwiftUI File creates a loading screen on start up on the app.

import SwiftUI

struct SplashScreen: View {
    @State var textOpac = 0.0;
      @State var image = Image("circle-cropped");
      @State var spin = false;
    var body: some View {
        
//Creates Logo and color scheme for loading screen animation
        
        VStack{
                   Text("Snip")
                       .font(.custom("AvenirNext-Heavy", size: 75))
                       
                       .foregroundColor(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
                       .opacity(textOpac)
                       .padding()
               
                       
                   ZStack{
                       image
                           .frame(width: 101.0, height: 100.0)
                        .rotationEffect(.degrees(spin ? 360: 0)).animation(Animation.spring().repeatForever(autoreverses: false))
                           
                        .opacity(textOpac)
                          
                   }
                
                       
                   Text("Snap")
                     .font(.custom("AvenirNext-Heavy", size: 75))
                      
                      .foregroundColor(Color(red: 0.6, green: 0.525, blue: 0.46, opacity: 1.0))
                      .opacity(textOpac)
                       .padding()
                       .onAppear(){
                         self.runAnimation()
                   }
                       
               }
    }
}

//Animation Handling
extension SplashScreen{
    var animationDuration: Double { return 1.0 }
     var animationDelay: Double { return  0.2 }
    
//Function Runs the Animation
    func runAnimation() {
        showEverything()
     
        
       
    }

//Shows the effects of the animation
    func showEverything () {
        withAnimation(Animation.easeIn(duration: animationDuration).delay(0.5)) {
             textOpac = 1.0
            spin = true
           }
    }
    
    
    
   
}

//This shows the content in the preview provider
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
