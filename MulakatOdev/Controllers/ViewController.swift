//
//  ViewController.swift
//  MulakatOdev
//
//  Created by kerem on 3.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate  {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
//MARK: - Table view hücrelerinde yazdıracağımız metinler dizisi
    let brandArray = ["Audi", "Bmw", "Chrysler", "Fiat", "Honda", "Jaguar", "Lexus", "Mini", "Porsche", "Volkswagen", "Volvo"]
    
//MARK: - Table view hücrelerinde yazdıracağımız image ların isimlerinin dizisi
    let brandImages = ["audi", "bmw", "chrysler", "fiat", "honda", "jaguar", "lexus", "mini", "porsche", "volkswagen", "volvo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = true
    }
    
//MARK: - Bu fonksiyon sayesinde scroll view um en üste geldiğinde navigation bar ımın gözükmemesini sağladım.
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            if scrollView.contentOffset.y <= 0 {
                navigationController?.setNavigationBarHidden(true, animated: true)
            } else {
                navigationController?.setNavigationBarHidden(false, animated: true)
            }
        }

    
    
//    MARK: - Table view un genel iki fonksiyonu
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brandArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     

        cell.textLabel?.text = brandArray[indexPath.row]
        cell.imageView?.image = UIImage(named: brandImages[indexPath.row])
        
        return cell
        
        
    }
    
    
    //MARK: - Burada table view un her bir hücre yüksekliğini 100 olarak ayarladık.
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
//    MARK: - Burada table view umuza "Markalar" başlığını ekledik
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
            headerView.backgroundColor = .systemGray6

            let titleLabel = UILabel(frame: CGRect(x: 15, y: 0, width: headerView.frame.width - 30, height: headerView.frame.height))
            titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
            titleLabel.text = "Markalar"

            headerView.addSubview(titleLabel)

            return headerView
        }

        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 50
        }

  
   





//MARK: - Bu fonksiyonda table view un her bir hücresi tıklanması için ayrı bir segue ile ayrı bir ekrana yönlendirme yaptık.
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


