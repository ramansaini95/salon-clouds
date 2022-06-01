//
//  shopAll.swift
//  SalonClouds
//
//  Created by Guri Saini on 25/05/22.
//

import UIKit

class shopAll: UIViewController {
    @IBOutlet var shopAllTable:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
}
extension shopAll : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shopAllCell", for: indexPath) as! shopAllCell
        return cell
    }
    
    
}
