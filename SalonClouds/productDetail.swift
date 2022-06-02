//
//  productDetail.swift
//  SalonClouds
//
//  Created by Guri Saini on 23/05/22.
//

import UIKit

class productDetail: UIViewController {
    @IBOutlet var tableView : UITableView!
    @IBOutlet weak var backButton : UIImageView!

    @IBOutlet weak var heartImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        backButton.isUserInteractionEnabled = true
        backButton.addGestureRecognizer(tapGestureRecognizer)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func imageTapped(tapGestureRecognizer:UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        self.navigationController?.popViewController(animated: true)

    }
   
    @IBAction func buyButton(_ sender: Any) {
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "shippingAdress") as? shippingAdress
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
//extension productDetail : UITableViewDelegate,UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "productDetailCell", for: indexPath) as!
//            productDetailCell
//        return cell
//    }
//
//
//}
