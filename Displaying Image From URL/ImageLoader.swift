//
//  ImageLoader.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//


//This file reads the URLs stored in the ProfileImagesListViewModel and loads it onto the app.
import Foundation
import Combine

class ImageLoader : ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    var data = Data(){
        didSet {
            didChange.send(data)
        }
    }
    
    init(urlString:String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) {data, _, _ in
            guard let data = data else {return}
            DispatchQueue.main.async {
                self.data = data
            }
    }
        task.resume()
    }
}
