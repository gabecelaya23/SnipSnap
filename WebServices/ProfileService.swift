//
//  ProfileService.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

//An Extra Web Service class that retrieves JSON data remotely
class ProfileService: ObservableObject{
    var didChange = PassthroughSubject<ProfileService, Never>()
    
    
    @Published var profiles = [Profile]()
    
    init(){
        guard let url = URL(string: "https://snipsnapapp.com/service.php") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            let profiles = try? JSONDecoder().decode([Profile].self, from: data)
            DispatchQueue.main.async {
                self.profiles = profiles!
            }
            
            
            
        }.resume()
    }
}
