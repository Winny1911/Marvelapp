//
//  ItemsTableDatasource.swift
//  Marvel
//
//  Created by Winny Pina on 29/01/2021.
//  Copyright © 2021 Winny Pina. All rights reserved.
//

import UIKit

protocol ItemsTableViewDatasource: UITableViewDataSource {
    associatedtype T
    var items:[T] {get}
    weak var tableView: UITableView? {get}
    weak var delegate: UITableViewDelegate? {get}
    
    init(items: [T], tableView: UITableView, delegate: UITableViewDelegate)
    
    func setupTableView()
}

extension ItemsTableViewDatasource {
    func setupTableView() {
        self.tableView?.dataSource = self
        self.tableView?.delegate = self.delegate
        self.tableView?.reloadData()
    }
}
