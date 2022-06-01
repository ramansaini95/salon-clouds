//
//  WishlistTableCell.swift
//  SalonClouds
//
//  Created by Guri Saini on 26/05/22.
//

import UIKit

class WishlistTableCell: UITableViewCell {
    @IBOutlet var wishlistCollectionCell : UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func wishlistCollectionCellCall(){
        self.wishlistCollectionCell.delegate=self
        self.wishlistCollectionCell.dataSource=self
        
    }

}
extension WishlistTableCell : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "wishlistCollectionCell", for: indexPath) as! wishlistCollectionCell
        return cell
    }
    
    
}
