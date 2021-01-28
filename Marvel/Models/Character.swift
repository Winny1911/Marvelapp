//
//  Character.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import Foundation
import ObjectMapper

struct Character {
    var id: Int = 0
    var name: String = ""
    var bio: String = ""
    var thumImage: ThumbImage?
}


extension Character: Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        id    <- map["id"]
        name    <- map["name"]
        bio     <- map["description"]
        thumImage    <- map["thumbnail"]
    }
}
