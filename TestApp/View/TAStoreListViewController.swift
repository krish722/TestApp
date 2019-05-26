//
//  TAStoreListViewController.swift
//  TestApp
//
//  Created by Krish on 26/05/19.
//  Copyright © 2019 Plexure. All rights reserved.
//

import UIKit

class TAStoreListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension TAStoreListViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension TAStoreListViewController : TAStoreListViewProtocol {
    func show(stores: [TAStore]) {
        
    }
    
}
