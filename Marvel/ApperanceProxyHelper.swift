//
//  ApperanceProxyHelper.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import Foundation
import UIKit

struct ApperanceProxyHelper {
    
    static func customizeNavigationBar() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = ColorPalette.white
        navigationBarAppearace.titleTextAttributes = [NSForegroundColorAttributeName:ColorPalette.white]
    }
    
}


