//
//  ViewController.swift
//  MulakatOdev
//
//  Created by kerem on 3.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let brandArray = ["Audi", "Bmw", "Chrysler", "Fiat", "Honda", "Jaguar", "Lexus", "Mini", "Porsche", "Volkswagen", "Volvo"]
    
    
    let brandImages = ["audi", "bmw", "chrysler", "fiat", "honda", "jaguar", "lexus", "mini", "porsche", "volkswagen", "volvo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brandArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = brandArray[indexPath.row]
        cell.imageView?.image = UIImage(named: brandImages[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0 // Burada hücre yüksekliğini 100 olarak ayarladık.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedBrand = brandArray[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        switch selectedBrand {
        case "Audi":
            performSegue(withIdentifier: "toAudi", sender: nil)
        case "Bmw":
            performSegue(withIdentifier: "toBmw", sender: nil)
        case "Chrysler":
            performSegue(withIdentifier: "toChrysler", sender: nil)
        case "Fiat":
            performSegue(withIdentifier: "toFiat", sender: nil)
        case "Honda":
            performSegue(withIdentifier: "toHonda", sender: nil)
        case "Jaguar":
        performSegue(withIdentifier: "toJaguar", sender: nil)
        case "Lexus":
        performSegue(withIdentifier: "toLexus", sender: nil)
        case "Mini":
        performSegue(withIdentifier: "toMini", sender: nil)
        case "Volvo":
        performSegue(withIdentifier: "toVolvo", sender: nil)
        case "Volkswagen":
        performSegue(withIdentifier: "toVolkswagen", sender: nil)
        default:
        performSegue(withIdentifier: "toPorsche", sender: nil)
            break
        }
        
    }
    
    
    
    
}

