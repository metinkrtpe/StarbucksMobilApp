//
//  ViewController.swift
//  StarbucksMobilApp
//
//  Created by Macintosh HD on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func kahvelerClicked(_ sender: Any) {
    performSegue(withIdentifier: "toLaterVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLaterVC"{
            let destinationVC = segue.destination as? laterViewController
        }
    }
    
}

