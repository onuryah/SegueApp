//
//  ViewController.swift
//  Multiply Screen
//
//  Created by Ceren Çapar on 16.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldName: UITextField!
    var userName = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }
    @IBAction func buttonNext(_ sender: Any) {
        userName = "Name: \(textFieldName.text!)"
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }

}

