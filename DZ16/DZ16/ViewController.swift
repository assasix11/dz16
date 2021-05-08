//
//  ViewController.swift
//  DZ16
//
//  Created by Дмитрий Зубарев on 08.05.2021.
//

import UIKit

class ViewController: UIViewController {
    let burgerMenuButton = UIImageView()
    let backGroundView = UIView()
    let burgerView = UIView()
    let firstPartOfMenu = UILabel()
    let secondPartOfMenu = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        let burgerImage = UIImage(named: "burger")
        burgerMenuButton.image = burgerImage
        burgerMenuButton.frame = CGRect(x: 20, y: UIScreen.main.bounds.height / 12, width: 31, height: 22)
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedMe))
        burgerMenuButton.addGestureRecognizer(tap)
        burgerMenuButton.isUserInteractionEnabled = true
        let tapOnBack = UITapGestureRecognizer(target: self, action: #selector(tapOnBackground))
        backGroundView.addGestureRecognizer(tapOnBack)
        let city = UIImageView(frame: CGRect(x: 0,
                                             y: 0,
                                             width: UIScreen.main.bounds.width,
                                             height: UIScreen.main.bounds.height))
        city.image = UIImage(named: "city")
        city.contentMode = .scaleAspectFill
        view.addSubview(city)
        view.addSubview(burgerMenuButton)
    }
    @objc func tappedMe() {
        burgerView.frame = CGRect(x: Int(-UIScreen.main.bounds.width / 2),
                                  y: 0,
                                  width: Int(UIScreen.main.bounds.width / 2),
                                  height: Int(UIScreen.main.bounds.height))
        backGroundView.frame = CGRect(x: Int(0),
                                      y: 0,
                                      width: Int(UIScreen.main.bounds.width),
                                      height: Int(UIScreen.main.bounds.height))
        firstPartOfMenu.text = "Главная"
        firstPartOfMenu.textColor = .white
        firstPartOfMenu.frame = CGRect(x: 20, y: 70, width: 100, height: 50)
        burgerView.addSubview(firstPartOfMenu)
        secondPartOfMenu.text = "About us"
        secondPartOfMenu.textColor = .white
        secondPartOfMenu.frame = CGRect(x: 20, y: 120, width: 100, height: 50)
        burgerView.addSubview(secondPartOfMenu)
        burgerView.backgroundColor = .lightGray
        backGroundView.backgroundColor = .black
        backGroundView.layer.opacity = 0.0
        view.addSubview(backGroundView)
        view.addSubview(burgerView)
        UIView.animate(withDuration: 0.3) {
            self.burgerView.frame = CGRect(x: Int(0),
                                           y: 0,
                                           width: Int(UIScreen.main.bounds.width / 2),
                                           height: Int(UIScreen.main.bounds.height))
            self.backGroundView.layer.opacity = 0.6
        }
    }
    @objc func tapOnBackground() {
        UIView.animate(withDuration: 0.3) {
            self.burgerView.frame = CGRect(x: Int(-UIScreen.main.bounds.width / 2),
                                           y: 0,
                                           width: Int(UIScreen.main.bounds.width / 2),
                                           height: Int(UIScreen.main.bounds.height))
            self.backGroundView.layer.opacity = 0.0
        }
    }

}
