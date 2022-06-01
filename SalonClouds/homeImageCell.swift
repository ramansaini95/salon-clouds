//
//  homeImageCell.swift
//  SalonClouds
//
//  Created by Guri Saini on 20/05/22.
//

import UIKit
protocol YourCellDelegate:NSObjectProtocol {
    func call(_sender:Any)
   }
class homeImageCell: UITableViewCell {
    @IBOutlet var productCell:UICollectionView!
    var Delegate:YourCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
      
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setDelegates(){
        productCell.delegate=self
        productCell.dataSource=self
    }

}
extension homeImageCell : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCollectionCell", for: indexPath) as? homeCollectionCell
        
        return cell!    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
      //  if(collectionView == productCell){
        Delegate?.self.call(_sender: indexPath)
       // }
            
        
        
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let storyboard=UIStoryboard(name: "Main", bundle:nil)
//        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
////        navigationController?.isNavigationBarHidden=false
////        self.navigationController?.pushViewController(vc!, animated: true)
//    }
    
    
}
