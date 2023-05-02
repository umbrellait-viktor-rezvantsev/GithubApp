//
//  ViewController.swift
//  GithubApp
//
//  Created by Viktor Rezvantsev on 18.04.2023.
//

import UIKit
import SnapKit
import NetworkFramework

class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white

        let backgroundView: UIView = UIView()
        backgroundView.backgroundColor = .yellow
        view.addSubview(backgroundView)
        backgroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}

