//
//  wishlistScreen.swift
//  SalonClouds
//
//  Created by Guri Saini on 26/05/22.
//

import UIKit

class wishlistScreen: UIViewController {
    @IBOutlet var wishlistTable:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        wishlistTable.delegate=self
        wishlistTable.dataSource=self

        // Do any additional setup after loading the view.
    }
   
}
extension wishlistScreen : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishlistTableCell", for: indexPath) as!
        WishlistTableCell
        cell.wishlistCollectionCellCall()
        return cell
    }
    
    
}
