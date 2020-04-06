//
//  HomeScreen.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
//This file create the homepage for the application combining all of the Home screen views into one.
struct HomeScreen: View {
    
    @ObservedObject private var profileListVM = ProfileListViewModel()
    @ObservedObject public var profileArrays = ProfileArrayService()
    
    
    var body: some View {
        VStack{
            VStack{
                TopBarHome().padding(.top, 15)
                .padding(.bottom, -40)
                .edgesIgnoringSafeArea(.all)
               
                Section(header: Sections2()){
                        ExploreElement()
                                }
                Section(header: Sections3()){
                    
                //The list function is a specific Swift function that creates a list view. This can be used for an array of objects and fills the list with as many objects in the array.
                List(self.profileListVM.profiles, id: \.name){ item in
                   
                    VStack{
                       //This view is a custom view for dispalying a image from a url source.
                        URLImage(withURL: item.shop)
               
                    }
                    
                }
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
