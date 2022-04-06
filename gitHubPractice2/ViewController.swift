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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let selectedRow = tableView.indexPathForSelectedRow?.row else { return }
        let nvc =  segue.destination as! ViewController2
        nvc.animal = animalNames[selectedRow]
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

