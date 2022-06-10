//
//  SideViewController.swift
//  SalonClouds
//
//  Created by Guri Saini on 03/06/22.
//

import UIKit

class SideViewController: UIViewController {
    @IBOutlet var sideViewTable:UITableView!
    var screenNames = ["Shop All", "ShopAll Categories", "My Orders History","Wishlist","Settings"]
    var navScreens = ["homeScreen", "shopAll", "ordersList","wishlistScreen","settingScreen"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SideViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sideViewCell", for: indexPath) as! sideViewCell
        cell.screenName?.text = self.screenNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideViewFooter")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var screen = navScreens[indexPath.row]
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: navScreens[indexPath.row])
//        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
}
