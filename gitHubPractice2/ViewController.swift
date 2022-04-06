//
//  ViewController.swift
//  gitHubPractice2
//
//  Created by Matthew Sanchez on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
    
    let animalNames = ["Zebra", "Rhino", "Hippo"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return animalNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = animalNames[indexPath.row]
        return cell
    }

}

