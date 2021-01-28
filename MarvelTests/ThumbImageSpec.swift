//
//  ThumbImageSpec.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Marvel

class ThumbImageSpec: QuickSpec {
    override func spec() {
        describe("a thumbImage") {
            
            var thumbImage = ThumbImage()
            
            it("should be able to create a chracter from json") {
                thumbImage.imageExtension = "png"
                thumbImage.path = "whatever"
                expect(thumbImage.fullPath()).to(equal("whatever.png"))
            }
        }
    }
}
