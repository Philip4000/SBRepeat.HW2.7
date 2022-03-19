//
//  ContactsDetailListViewController.swift
//  SBRepeat.HW2.7
//
//  Created by Philip Noskov on 15.03.2022.
//

import UIKit

class ContactsDetailListViewController: UITableViewController {
    
    var contactList: [Person] = []


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullyName
    }
    
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
            
        } else {
            content.text = contact.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        
        
        return cell
    }

}
