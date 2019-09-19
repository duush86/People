//
//  ViewController.swift
//  People
//
//  Created by Antonio Orozco on 9/19/19.
//  Copyright © 2019 Antonio Orozco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataController = DataController()
    
    @IBOutlet weak var peopleTableView: UITableView!
    
    fileprivate var listOfPeople = [Person]() {
        
        didSet{
            self.peopleTableView.reloadData()
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialize()
    }
    
    private func initialize() {
        
        peopleTableView.delegate = self
        peopleTableView.dataSource = self
        dataController.delegate = self
        dataController.requestData(fileName: "people.json")
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let peopleCell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath) as! PeopleTableViewCell
        let person = listOfPeople[indexPath.row]
        
        //print(person)
        peopleCell.bind(person: person)
        
        return peopleCell
    }
    
}

extension ViewController: DataControllerDelegate {
    
    func didReceivedPeople(people: [Person]) {
        
        self.listOfPeople = people
    
    }
    
}
