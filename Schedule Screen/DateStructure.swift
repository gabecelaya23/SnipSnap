//
//  DateStructure.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import Foundation
//This struct creates the foundation for the date elements in the final Schedule View
struct DateStructure: Hashable {
    var day: Int = 0
    var monthAsString: String = ""
    var monthAsInt: Int = 0
    var year: String = ""
    var isSelected: Bool = false
}
