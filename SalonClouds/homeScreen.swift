//
//  homeScreen.swift
//  SalonClouds
//
//  Created by Guri Saini on 20/05/22.
//

import UIKit
import SideMenu

class homeScreen: UIViewController,YourCellDelegate {
    
    
    @IBOutlet var tableData:UITableView!
  //  @IBOutlet var sideMenu :UIImageView!
    @IBOutlet weak var searchField: UITextField!{
        didSet{
            searchField.tintColor = UIColor.lightGray
            searchField.setIcon(UIImage(imageLiteralResourceName: "search"))
        }
    }
   // private let sideMenu = SideMenuNavigationController(rootViewController:UIViewController())
    override func viewDidLoad() {
        super.viewDidLoad()
//        sideMenu.leftSide = true
//        SideMenuManager.default.leftMenuNavigationController = sideMenu
//        SideMenuManager.default.addPanGestureToPresent(toView: view)
//        setupSideMenu()
//        updateMenus()


    }
//    @IBAction func didTapSideMenu (){
//        present(sideMenu, animated: true)
//    }
     
    func call(_sender:Any) {
        print("call")
        let storyboard=UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
        navigationController?.isNavigationBarHidden=true
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
//    @objc func call(sender:UIButton){
//        let storyboard=UIStoryboard(name: "Main", bundle:nil)
//        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
//        navigationController?.isNavigationBarHidden=false
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }
    
}
extension homeScreen : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeImageCell", for: indexPath) as! homeImageCell
        cell.Delegate=self

        cell.setDelegates()
        
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("selected row")
//        let storyboard=UIStoryboard(name: "Main", bundle:nil)
//        let vc = storyboard.instantiateViewController(identifier: "productDetail") as? productDetail
//        navigationController?.isNavigationBarHidden=false
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }
   
   
    
}
extension homeScreen {

    private func setupSideMenu() {
        // Define the menus
        SideMenuManager.default.leftMenuNavigationController = storyboard?.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? SideMenuNavigationController
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
        //SideMenuManager.default.addPanGestureToPresent(toView: navigationController?.navigationBar ?? <#default value#>)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: view)
    }

    private func updateMenus() {
        let settings = makeSettings()
        SideMenuManager.default.leftMenuNavigationController?.settings = settings
        SideMenuManager.default.rightMenuNavigationController?.settings = settings
    }

    private func selectedPresentationStyle() -> SideMenuPresentationStyle {
        let modes: [SideMenuPresentationStyle] = [.menuSlideIn, .viewSlideOut, .viewSlideOutMenuIn, .menuDissolveIn]
        return modes[1]
    }

    private func makeSettings() -> SideMenuSettings {
        let presentationStyle = selectedPresentationStyle()
        //presentationStyle.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "menu (1)"))
        presentationStyle.menuStartAlpha = 1
        presentationStyle.menuScaleFactor = 1
        presentationStyle.onTopShadowOpacity = 0
        presentationStyle.presentingEndAlpha = 3
        presentationStyle.presentingScaleFactor = 1

        var settings = SideMenuSettings()
        settings.presentationStyle = presentationStyle
        settings.menuWidth = 239
        let styles:[UIBlurEffect.Style?] = [nil, .dark, .light, .extraLight]
        settings.blurEffectStyle = styles[1]
        settings.statusBarEndAlpha = 1

        return settings
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sideMenuNavigationController = segue.destination as? SideMenuNavigationController else { return }
        sideMenuNavigationController.settings = makeSettings()
    }
//    @IBAction func sideMenu(_sender:Any){
//        let storyboard=UIStoryboard(name: "Main", bundle:nil)
//        let sideMenuNavigationController = storyboard.instantiateViewController(identifier: "LeftMenuNavigationController") as? SideMenuNavigationController
//
//        sideMenuNavigationController?.settings = makeSettings()
//
//    }
}
//extension homeScreen: SideMenuNavigationControllerDelegate {
//
//    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
//        print("SideMenu Appearing! (animated: \(animated))")
//    }
//
//    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
//        print("SideMenu Appeared! (animated: \(animated))")
//    }
//
//    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
//        print("SideMenu Disappearing! (animated: \(animated))")
//    }
//
//    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
//        print("SideMenu Disappeared! (animated: \(animated))")
//    }
//}
