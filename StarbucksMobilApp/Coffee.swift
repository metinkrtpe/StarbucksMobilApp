//
//  Coffee.swift
//  StarbucksMobilApp
//
//  Created by Macintosh HD on 28.01.2021.
//

import Foundation
import UIKit

class Coffee{
    var name = ""
    var price = ""
    var image = UIImage()
    
    init(coffeeName:String,coffeePrice:String,coffeeImage:UIImage){
        name = coffeeName
        price = coffeePrice
        image = coffeeImage
    }
}
