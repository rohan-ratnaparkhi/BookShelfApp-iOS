//
//  HomeViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        attachLeftNavigationDrawer()
        
    }
    
    func attachLeftNavigationDrawer() {
        var centerContainer: MMDrawerController?
        
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let appWindow = appDelegate.window
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let centerViewController = self.navigationController
        let leftViewController = mainStoryboard.instantiateViewController(withIdentifier: "LeftSideNavigationViewController") as! LeftSideNavigationViewController

        let leftSideNav = UINavigationController(rootViewController: leftViewController)
        //let centerNav = UINavigationController(rootViewController: centerViewController)
        let centerNav = centerViewController
        
        centerContainer = MMDrawerController(center: centerNav, leftDrawerViewController: leftSideNav)
        
        centerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView;
        centerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView;
        
        appWindow!.rootViewController = centerContainer
        appWindow!.makeKeyAndVisible()
        
    }
    
}
