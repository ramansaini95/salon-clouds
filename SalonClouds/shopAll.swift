//
//  shopAll.swift
//  SalonClouds
//
//  Created by Guri Saini on 25/05/22.
//

import UIKit
import SideMenu

class shopAll: UIViewController {
    @IBOutlet var shopAllTable:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
}

extension shopAll : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shopAllCell", for: indexPath) as! shopAllCell
        return cell
    }
    
    
}
extension shopAll {
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
}

