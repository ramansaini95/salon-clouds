//
//  ViewController.swift
//  SalonClouds
//
//  Created by Guri Saini on 19/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var salonPicker: UIPickerView!
    
    @IBOutlet weak var pickerTag: UIView!
    var salonData = ["salonClouds","artistArcitects","salonClouds","artistArcitects","salonClouds","artistArcitects","salonClouds","artistArcitects",]
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.useUnderline()
        salonPicker.delegate=self
        salonPicker.dataSource=self
        salonPicker.isHidden = true
        pickerTag.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func continueButton(_sender:Any){
        if(emailTextField.text == "")
        {
            print("if")
            self.alertFunc(message1:"please enter valid email")

        }
        else{
            print("else")

            salonPicker.isHidden = false
            pickerTag.isHidden = false
            
        }
       
    }
    func alertFunc(message1:String)
    {
        let alert = UIAlertController(title: "Alert", message: message1, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}
extension ViewController : UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return salonData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return salonData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("picker")
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "loginScreen") as? loginScreen
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}
//extension UITextField {
//
//    func useUnderline() {
//        let border = CALayer()
//        let borderWidth = CGFloat(1.0)
//        border.borderColor = UIColor.cyan.cgColor
//        border.frame = CGRect(origin: CGPoint(x: 0,y :self.frame.size.height - borderWidth), size: CGSize(width: self.frame.size.width, height: self.frame.size.height))
//        border.borderWidth = borderWidth
//        self.layer.addSublayer(border)
//        self.layer.masksToBounds = true
//    }
//}

