//
//  ProfileListViewModel.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation
//This class uses the ProfileWebService file and parses the data into a structure.
//This allows the data being transfered to stay in its form from the JSON File
class ProfileListViewModel: ObservableObject{
    @Published var profiles = [ProfileViewModel]()
    
    init(){
        ProfileWebService().getProfiles {
            profiles in
            if let profiles = profiles {
                self.profiles = profiles.map(ProfileViewModel.init)
            }
        }
    }
}

struct ProfileViewModel: Hashable {
    var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
    }
     var id: String {
        print(self.profile.id)
         return self.profile.id
        
     }
     
     var name: String {
        return self.profile.name
     }
     
     var description:String {
         return self.profile.description
         
     }
    
    var shop:String {
        return self.profile.shop
        
    }
    
    var image1:String {
        return self.profile.image1
        
    }
    var image2:String {
           return self.profile.image2
           
       }
    var image3:String {
           return self.profile.image3
           
       }
     
    
    
}
