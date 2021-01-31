//
//  toSecondController.swift
//  StarbucksMobilApp
//
//  Created by Macintosh HD on 28.01.2021.
//

import UIKit

class toSecondController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var myCoffee = [Coffee]()
    var choosenCoffee : Coffee?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let frap1 = Coffee(coffeeName: "Caramel Frappuccino® ", coffeePrice: "Fiyat: 5$", coffeeImage: UIImage(named: "kahve1")!)
        let frap2 = Coffee(coffeeName: "Toffee Nut Frappuccino", coffeePrice: "Fiyat: 6.50$", coffeeImage: UIImage(named: "kahve2")!)
        let frap3 = Coffee(coffeeName: "Gingerbread Frappuccino", coffeePrice: "Fiyat: 2.50", coffeeImage: UIImage(named: "kahve3")!)
        let frap4 = Coffee(coffeeName: "Coffee Frappuccino®", coffeePrice: "Fiyat: 7.50$", coffeeImage: UIImage(named: "kahve4")!)
        let frap5 = Coffee(coffeeName: "Espresso Frappuccino®", coffeePrice: "Fiyat: 7$", coffeeImage: UIImage(named: "kahve5")!)
        let frap6 = Coffee(coffeeName: "Mocha Frappuccino®", coffeePrice: "Fiyat: 8.50$", coffeeImage: UIImage(named: "kahve6")!)
        let frap7 = Coffee(coffeeName: "Chip Frappuccino®", coffeePrice: "Fiyat: 3.50$", coffeeImage: UIImage(named: "kahve7")!)
        let frap8 = Coffee(coffeeName: "Chai Cream Frappuccino®", coffeePrice: "Fiyat 5.50$", coffeeImage: UIImage(named: "kahve8")!)
        
        myCoffee.append(frap1)
        myCoffee.append(frap2)
        myCoffee.append(frap3)
        myCoffee.append(frap4)
        myCoffee.append(frap5)
        myCoffee.append(frap6)
        myCoffee.append(frap7)
        myCoffee.append(frap8)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCoffee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myCoffee[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenCoffee = myCoffee[indexPath.row]
        self.performSegue(withIdentifier: "toCoffeeVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCoffeeVC"{
            let destinationVC = segue.destination as? toCoffeeController
            destinationVC?.selectedCoffee = choosenCoffee
        }
    }
}
