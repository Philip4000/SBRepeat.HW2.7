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
        
        transferData(from: contactList)
        
        
    }


    private func transferData(from data: [Person]) {
        let contactsVC = viewControllers?.first as! ContactsListViewController
        let detailVC = viewControllers?.last as! ContactsDetailListViewController
        
        contactsVC.contactList = data
        detailVC.contactList = data
    }

}
