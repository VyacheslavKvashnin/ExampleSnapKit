//
//  ViewController.swift
//  ExampleSnapKit
//
//  Created by Вячеслав Квашнин on 23.06.2022.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemCyan
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let subView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 20
        imageView.backgroundColor = .systemGray5
        return imageView
    }()
    
    private let pressButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemCyan
        button.layer.cornerRadius = 20
        button.setTitle("Press", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupViews()
    }

    private func setup() {
        view.backgroundColor = .white
    }
    
    private func setupViews() {
        
        view.addSubview(mainView)
        mainView.addSubview(subView)
        subView.addSubview(pressButton)
        subView.addSubview(mainImageView)
        
        mainView.snp.makeConstraints { make in
            make.topMargin.left.equalTo(20)
            make.bottomMargin.right.equalTo(-20)
        }
        
        subView.snp.makeConstraints { make in
            make.left.top.equalTo(20)
            make.right.bottom.equalTo(-20)
        }
        
        mainImageView.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(200)
            make.top.equalTo(subView).inset(20)
        }
        
        pressButton.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(50)
            make.bottom.equalTo(subView).inset(20)
        }
    }
}

