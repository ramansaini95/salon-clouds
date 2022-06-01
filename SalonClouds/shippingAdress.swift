//
//  shippingAdress.swift
//  SalonClouds
//
//  Created by Guri Saini on 24/05/22.
//

import UIKit

class shippingAdress: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var pinCode: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var adress: UITextField!
    @IBOutlet weak var phoneNo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.useUnderline()
        lastName.useUnderline()
        emailAddress.useUnderline()
        city.useUnderline()
        pinCode.useUnderline()
        state.useUnderline()
        adress.useUnderline()
        phoneNo.useUnderline()
        adress.useUnderline()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func addAddress(_sender:UIButton)
    {
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "paymentData") as? paymentData
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func backButton(_sender:UIImageView)
    {
        self.navigationController?.popViewController(animated: true)

    }

}
