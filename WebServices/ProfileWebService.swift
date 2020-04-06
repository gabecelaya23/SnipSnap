//
//  ProfileWebService.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation
//Retrieves profile information from my webservice database filled with profiles
class ProfileWebService {
   
    
    
    
    func getProfiles (completion: @escaping ([Profile]?) -> ()){
        //Declares the URL
        guard let url = URL(string: "https://snipsnapapp.com/service.php") else{
            fatalError("Invalid URL")
        }
        
        //Retrieves the data that was decoded in JSON
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let dat = data, error == nil else{
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let profiles = try? JSONDecoder().decode([Profile].self, from: dat)
            
           
            
            DispatchQueue.main.async {
                completion(profiles)
            }
        }.resume()
    }
    

}
