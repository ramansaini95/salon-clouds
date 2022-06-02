//
//  paymentData.swift
//  SalonClouds
//
//  Created by Guri Saini on 25/05/22.
//

import UIKit

class paymentData: UIViewController {

    @IBOutlet weak var cardName: UITextField!
    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var cvv: UITextField!
    @IBOutlet weak var expYear: UITextField!
    @IBOutlet weak var expMonth: UITextField!
    @IBOutlet weak var backButton : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cardName.useUnderline()
        cardNumber.useUnderline()
        cvv.useUnderline()
        expYear.useUnderline()
        expMonth.useUnderline()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        backButton.isUserInteractionEnabled = true
        backButton.addGestureRecognizer(tapGestureRecognizer)
    }
    

    @IBAction func continueButton(_ sender: UIButton) {
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "myCart") as? myCart
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView

        self.navigationController?.popViewController(animated: true)

    }
}
