//
//  CharacterViewController.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import UIKit

final class CharacterViewController: UIViewController {
    @IBOutlet weak var characterDescription: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var character: Character?
}

extension CharacterViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = character?.name ?? ""
    }
}


extension CharacterViewController {
    func setupView() {
        let bio = character?.bio ?? ""
        characterDescription.text = bio.isEmpty ? "No description" : bio
        
        image.download(image: character?.thumImage?.fullPath() ?? "")
    }
}
