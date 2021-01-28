//
//  ItemsCollectionViewDatasource.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import UIKit

protocol ItemsCollectionViewDatasource: UICollectionViewDataSource {
    associatedtype T
    var items:[T] {get}
    weak var collectionView: UICollectionView? {get}
    weak var delegate: UICollectionViewDelegate? {get}
    
    init(items: [T], collectionView: UICollectionView, delegate: UICollectionViewDelegate)
    
    func setupCollectionView()
}

extension ItemsCollectionViewDatasource {
    func setupCollectionView() {
        self.collectionView?.dataSource = self
        self.collectionView?.delegate = self.delegate
        self.collectionView?.reloadData()
    }
}

