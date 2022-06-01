//
//  ordersList.swift
//  SalonClouds
//
//  Created by Guri Saini on 25/05/22.
//

import UIKit

class ordersList: UIViewController {
    @IBOutlet var ordersListTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

}
extension ordersList : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ordersListCell", for: indexPath) as!
        ordersListCell
        return cell
    }
    
    
}
