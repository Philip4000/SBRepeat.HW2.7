//
//  TabBarViewController.swift
//  SBRepeat.HW2.7
//
//  Created by Philip Noskov on 15.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    

    let contactList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passingData()
    
    }


    private func passingData() {
        
        guard let viewControllers = viewControllers else {return}
        
        viewControllers.forEach {
            if let listVC = $0 as? ContactsListViewController {
                listVC.contactList = contactList
            } else if let detailVC = $0 as? ContactsDetailListViewController {
                detailVC.contactList = contactList
            }
            
        }
        
//        let listVC = viewControllers?.first as! ContactsListViewController
//        let detailVC = viewControllers?.last as! ContactsDetailListViewController
//        
//        listVC.contactList = contactList
//        detailVC.contactList = contactList
//        
        
        
    }

}
