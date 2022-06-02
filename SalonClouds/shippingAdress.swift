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
    @IBOutlet weak var backButton : UIImageView!
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
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        backButton.isUserInteractionEnabled = true
        backButton.addGestureRecognizer(tapGestureRecognizer)

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func addAddress(_sender:UIButton)
    {
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "paymentData") as? paymentData
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
  @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
    let tappedImage = tapGestureRecognizer.view as! UIImageView

        self.navigationController?.popViewController(animated: true)

    }

}
