//
//  homeScreen.swift
//  SalonClouds
//
//  Created by Guri Saini on 20/05/22.
//

import UIKit

class homeScreen: UIViewController,YourCellDelegate {
    
    
    @IBOutlet var tableData:UITableView!
    @IBOutlet weak var searchField: UITextField!{
        didSet{
            searchField.tintColor = UIColor.lightGray
            searchField.setIcon(UIImage(imageLiteralResourceName: "search"))
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableData.dataSource = self
//        tableData.delegate = self

        // Do any additional setup after loading the view.
    }
    func call(_sender:Any) {
        print("call")
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
//    @objc func call(sender:UIButton){
//        let storyboard=UIStoryboard(name: "Main", bundle:nil)
//        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
//        navigationController?.isNavigationBarHidden=false
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }
    
}
extension homeScreen : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeImageCell", for: indexPath) as! homeImageCell
        cell.Delegate=self

        cell.setDelegates()
        
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("selected row")
//        let storyboard=UIStoryboard(name: "Main", bundle:nil)
//        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
//        navigationController?.isNavigationBarHidden=false
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }
   
   
    
}
