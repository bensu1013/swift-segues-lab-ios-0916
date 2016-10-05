//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var dogArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogArray = [
            "Bethoveen",
            "Mozart",
            "Bach",
            "Chopin",
            "Amadeus",
            "Wolfgang",
            "Toto",
            "Spot"
        ]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DogCell", for: indexPath)
        cell.textLabel?.text = dogArray[indexPath.row]
        
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "DetailsSegue" {return}
        if let nextView = segue.destination as? AnimalViewController,
            let index = tableView.indexPathForSelectedRow{
            nextView.dogString = dogArray[index.row]
            print(dogArray[index.row])
        }
       
        
        
        
    }
    
    
    
}
