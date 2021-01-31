//
//  toCoffeeController.swift
//  StarbucksMobilApp
//
//  Created by Macintosh HD on 28.01.2021.
//

import UIKit

class toCoffeeController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var selectedCoffee : Coffee?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeLabel.text = selectedCoffee?.name
        imageView.image = selectedCoffee?.image
        priceLabel.text = selectedCoffee?.price
        
        
        
    }
    

   

}
