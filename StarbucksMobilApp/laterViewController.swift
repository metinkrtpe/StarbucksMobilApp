//
//  laterViewController.swift
//  StarbucksMobilApp
//
//  Created by Macintosh HD on 29.01.2021.
//

import UIKit

class laterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func clickedButton(_ sender: Any) {
        performSegue(withIdentifier: "tothreeVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tothreeVC"{
            let destinationVC = segue.destination as? toSecondController
        }
    }
}
