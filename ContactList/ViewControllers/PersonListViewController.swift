//
//  PersonListViewController.swift
//  ContactList
//
//  Created by user on 20.07.2022.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    private let personList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.firstName) \(person.lastName)"
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personalDetailsVC = segue.destination as? PersonalDetailsViewController else { return }
        personalDetailsVC.person = sender as? Person
        
        /* if let personalDetailsVC = segue.destination as? PersonalDetailsViewController {
         personalDetailsVC.person = sender as? Person
         } else if let personalListVCV2 = segue.destination as? PersonListViewControllerV2 {
         personalListVCV2.personList = sender as? [Person]
         } */
    }
}
