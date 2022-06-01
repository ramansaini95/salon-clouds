//
//  settingScreen.swift
//  SalonClouds
//
//  Created by Guri Saini on 26/05/22.
//

import UIKit

class settingScreen: UIViewController {

    @IBOutlet weak var newPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        newPassword.useUnderline()
        confirmPassword.useUnderline()

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func changePassword(_ sender: Any) {
    }
    
   

}
