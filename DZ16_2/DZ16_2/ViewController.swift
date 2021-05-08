//
//  ViewController.swift
//  DZ16_2
//
//  Created by Дмитрий Зубарев on 08.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonAlert(_ sender: Any) {
        displayAlert()
    }
    @IBAction func buttonAlertWithTwo(_ sender: Any) {
        displayAlertWithTwo()
    }
}

extension ViewController {
    func displayAlert() {
        let alert = UIAlertController(title: "Message", message: "DZ is made", preferredStyle: .alert)
        let action = UIAlertAction(title: "Close", style: .default, handler: { (_)in })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    func displayAlertWithTwo() {
        let alert = UIAlertController(title: "Message", message: "DZ is made", preferredStyle: .alert)
        let action = UIAlertAction(title: "Close", style: .default, handler: { (_)in })
        let actionTwo = UIAlertAction(title: "I agree", style: .destructive, handler: { (_)in })
        alert.addAction(action)
        alert.addAction(actionTwo)
        present(alert, animated: true, completion: nil)
    }
}
