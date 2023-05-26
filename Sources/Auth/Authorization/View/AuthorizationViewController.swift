//
//  AuthorizationViewController.swift
//  Application
//
//  Created by Viktor Rezvantsev on 03.05.2023.
//

import UIKit
import SnapKit

class AuthorizationViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "GithubApp"
        label.font = UIFont.systemFont(ofSize: 32)
        label.textColor = .black
        return label
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillProportionally
        stack.spacing = 30
        return stack
    }()
    
    private let textInputStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    private let buttonsStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillProportionally
        stack.spacing = 10
        return stack
    }()
    
    private let loginTextField: BasicTextField = {
        let textField = BasicTextField(placeholder: "Enter login", borderColor: .systemBlue)
        return textField
    }()
    
    private let passwordTextField: BasicTextField = {
        let textField = BasicTextField(placeholder: "Enter password", borderColor: .systemBlue)
        return textField
    }()
    
    private let submitButton: BasicButton = {
        let button = BasicButton(title: "Авторизоваться", backgroundColor: .systemBlue)
        return button
    }()
    
    private let registrationButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitle("Зарегистрироваться", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupConstraints()
    }

}

private extension AuthorizationViewController {

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(stackView)
        stackView.addArrangedSubview(textInputStackView)
        textInputStackView.addArrangedSubview(loginTextField)
        textInputStackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(submitButton)
        buttonsStackView.addArrangedSubview(registrationButton)
    }
    
    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeArea.snp.top).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        stackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        
        submitButton.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(60)
        }

        registrationButton.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(40)
        }

        loginTextField.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(50)
        }

        passwordTextField.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
    }
}
