//
//  UIImage+Kingfisher.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    func download(image url: String) {
        guard let imageURL = URL(string:url) else {
            return
        }
        self.kf.setImage(with: ImageResource(downloadURL: imageURL))
    }
}
