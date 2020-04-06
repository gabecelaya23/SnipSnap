//
//  Profile.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation
//Creates foundation of a profile
struct Profile: Decodable, Hashable{
    var id: String
    var name: String
    var description:String
    var shop:String
    var image1: String
    var image2: String
    var image3: String
}
