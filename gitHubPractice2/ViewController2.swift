//
//  ViewController2.swift
//  gitHubPractice2
//
//  Created by Matthew Sanchez on 4/6/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
 // var animal = ""
    var animal: String?
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = animal
 
        imageView.image = UIImage(named: animal!)
   
    

}
}
