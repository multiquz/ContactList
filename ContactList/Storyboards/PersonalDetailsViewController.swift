//
//  PersonalDetailsViewController.swift
//  ContactList
//
//  Created by user on 20.07.2022.
//

import UIKit

class PersonalDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "phone: \(person.phoneNumber)"
        emailLabel.text = "email: \(person.email)"
        title = person.fullName
    }
}
