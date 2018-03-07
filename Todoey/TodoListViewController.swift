//
//  ViewController.swift
//  Todoey
//
//  Created by Samy Waltersam on 07.03.18.
//  Copyright © 2018 goodcare. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggs", "Destroy Demogorgon"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: TableView Datasource Methods
    //Anzahl der Reihen
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //Erzeuge Zelle mit reusable Identifier und setze textLabel
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK: TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(itemArray[indexPath.row])")
        
        //Give selected Row a checkmark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //Wenn Zeile markiert soll diese nur kurz grau sein.
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

