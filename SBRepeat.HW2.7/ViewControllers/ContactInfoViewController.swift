//
//  ContactInfoViewController.swift
//  SBRepeat.HW2.7
//
//  Created by Philip Noskov on 15.03.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var fullyNameLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        fullyNameLabel.text = person.fullyName
        
        navigationItem.title = person.fullyName
    

    }
    
}
