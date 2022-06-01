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
    override func viewDidLoad() {
        super.viewDidLoad()
        cardName.useUnderline()
        cardNumber.useUnderline()
        cvv.useUnderline()
        expYear.useUnderline()
        expMonth.useUnderline()
    }
    

    @IBAction func continueButton(_ sender: UIButton) {
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "myCart") as? myCart
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func backButton(_sender:UIImageView)
    {
        self.navigationController?.popViewController(animated: true)

    }
}
