//
//  CharacterTableCell.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import UIKit
import Reusable

final class CharacterTableCell: UITableViewCell, NibReusable {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var characterDescription: UILabel!
    @IBOutlet weak var thumb: UIImageView!
    
    static func height() -> CGFloat {
        return 80
    }
    
    func setup(item: Character) {
        name.text = item.name
        characterDescription.text = item.bio.isEmpty ? "No description" : item.bio
        thumb.download(image: item.thumImage?.fullPath() ?? "")
    }
}
