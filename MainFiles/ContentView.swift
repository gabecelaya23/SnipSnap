//
//  ContentView.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

//This view is the main view for running the application.
import SwiftUI

struct ContentView: View {
//Initilizing Loading Screen Variables
    @State var showSplash = true
    @State var showHome = false
    var body: some View {
          ZStack{
                        TabbedView().opacity(showHome ? 1: 0)
                    SplashScreen()
                    .opacity(showSplash ? 1 : 0)
                          .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                              withAnimation() {
                                self.showSplash = false
                                self.showHome = true
                                }
                            }
                        }
                         
                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
