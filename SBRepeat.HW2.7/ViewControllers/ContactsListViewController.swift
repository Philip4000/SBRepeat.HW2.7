//
//  ContactsListViewController.swift
//  SBRepeat.HW2.7
//
//  Created by Philip Noskov on 15.03.2022.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    var contactList: [Person] = []

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
        contactList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = contactList[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = person.fullyName
        cell.contentConfiguration = content

        return cell
    }



     //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let person = contactList[indexPath.row]
        
        contactInfoVC.person = person

    }


}
