//
//  TabBarViewController.swift
//  SB-Spotify
//
//  Created by Danh Tu on 19/10/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vcHome = HomeViewController()
        let vcSearch = SearchViewController()
        let vcLibrary = LibraryViewController()
        
        vcHome.title = "Browse"
        vcSearch.title = "Search"
        vcLibrary.title = "Library"
        
        vcHome.navigationItem.largeTitleDisplayMode = .always
        vcSearch.navigationItem.largeTitleDisplayMode = .always
        vcLibrary.navigationItem.largeTitleDisplayMode = .always
        
        let navHome = UINavigationController(rootViewController: vcHome)
        let navSearch = UINavigationController(rootViewController: vcSearch)
        let navLibrary = UINavigationController(rootViewController: vcLibrary)
        
        navHome.navigationBar.prefersLargeTitles = true
        navSearch.navigationBar.prefersLargeTitles = true
        navLibrary.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navHome, navSearch, navLibrary], animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
