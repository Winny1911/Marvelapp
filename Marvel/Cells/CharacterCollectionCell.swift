//
//  CharacterCollectionCell.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import UIKit
import Reusable

final class CharacterCollectionCell: UICollectionViewCell, NibReusable {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var thumb: UIImageView!
    
    
    static func size(for parentWidth: CGFloat) -> CGSize {
        let numberOfCells = CGFloat(2)
        let width = parentWidth / numberOfCells
        return CGSize(width: width, height: width)
    }
    
    func setup(item: Character) {
        name.text = item.name
        thumb.download(image: item.thumImage?.fullPath() ?? "")
    }
}
