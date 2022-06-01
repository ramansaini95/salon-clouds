//
//  myCart.swift
//  SalonClouds
//
//  Created by Guri Saini on 27/05/22.
//

import UIKit

class myCart: UIViewController {
    @IBOutlet var myCartTable:UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backButton(_sender:UIImageView)
    {
        self.navigationController?.popViewController(animated: true)

    }
    
}
extension myCart : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCartTableCell", for: indexPath) as!
        myCartTableCell
        return cell
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCartFooter")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 200
    }
    
    
}
