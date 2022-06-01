//
//  loginScreen.swift
//  SalonClouds
//
//  Created by Guri Saini on 20/05/22.
//

import UIKit

class loginScreen: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.useUnderline()
        passwordField.useUnderline()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginFunc(_sender:Any){
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "homeScreen") as? homeScreen
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }

}
