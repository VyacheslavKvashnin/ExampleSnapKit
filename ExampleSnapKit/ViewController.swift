//
//  ViewController.swift
//  ExampleSnapKit
//
//  Created by Вячеслав Квашнин on 23.06.2022.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    
    func someFunc() {
        let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle("Button", for: .normal)
        button.layer.cornerRadius = 20
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(100)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        someFunc()
        
    }


}

