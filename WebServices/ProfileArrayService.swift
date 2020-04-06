//
//  ProfileArrayService.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/4/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation
//Creates arrays of specific elements from a remote json file to the application.
class ProfileArrayService: ObservableObject{
    var allNames = [String]()
       var allDescriptions = [String]()
    
    func fillProfileArrays(theURL:String){
        let url = URL(string: theURL)
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error != nil {
                print("didnt work")
                
                DispatchQueue.main.asyncAfter(deadline: .now()){
                    //No action needed
                }
            } else{
                do{
                    //This function parses the json file data into a String array.
                    let parseData = try JSONSerialization.jsonObject(with: data!) as! [String:Any]
                    
                    //This for loop creates a Swift Dictionary which is a type of datastructure that allows storage of a value with a specific key reference.
                    for(key, value) in parseData {
                        if(key == "name"){
                            self.allNames.append(value as! String)
                        } else if (key == "description"){
                            self.allDescriptions.append(value as! String)
                        }
                    }
                    
                }
                catch let error as NSError{
                    print(error)
                    
                    DispatchQueue.main.asyncAfter(deadline: .now()){
                        //No action needed
                    }
                }
            }
        }.resume()
    }
}
