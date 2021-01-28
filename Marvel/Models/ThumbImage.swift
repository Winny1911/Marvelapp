//
//  ThumbImage.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import Foundation
import ObjectMapper


struct ThumbImage {
    var path: String = ""
    var imageExtension: String = ""
    
    func fullPath() -> String {
        return "\(path).\(imageExtension)"
    }
}

extension ThumbImage: Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        path    <- map["path"]
        imageExtension    <- map["extension"]
    }
}
