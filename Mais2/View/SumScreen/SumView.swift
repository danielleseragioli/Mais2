//
//  SumView.swift
//  Mais2
//
//  Created by DanielleSeragioli on 05/04/22.
//

import UIKit

class SumView: UIView {
    
    var clickSumButton: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .systemPurple
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - create view ellements
    
    lazy var numberTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "INSIRA UM NÚMERO"
        view.backgroundColor = .systemBackground
        view.borderStyle = .roundedRect
        view.keyboardType = .numberPad
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var sumButton: UIButton = {
        let view = UIButton()
        view.setTitle("ADICIONAR 2", for: .normal)
        view.backgroundColor = .systemBackground
        view.setTitleColor(UIColor.label, for: .normal)
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(self.performStart), for: .touchUpInside)
        return view
    }()
    
    lazy var resultLabel: UILabel = {
       let view = UILabel()
        view.frame = CGRect(x: 10.0, y: 200.0, width: UIScreen.main.bounds.size.width - 40.0, height: 100)
        view.textColor = .label
        view.textAlignment = .center
        view.numberOfLines = 4
        view.minimumScaleFactor = 0.5
        view.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        view.isHidden = true
        return view
    }()
    
    
    // MARK: - Set up elements
    
    private func setupView(){
        self.addSubview(self.numberTextField)
        self.addSubview(self.sumButton)
        self.addSubview(self.resultLabel)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            //  text field ---------------------------------------------
            // usar self ao inves de view.
            self.numberTextField.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 60),
            self.numberTextField.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.85),
            self.numberTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.numberTextField.heightAnchor.constraint(equalToConstant: 50),
            
            // button ----------------------------------------------
            self.sumButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 16),
            self.sumButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.85),
            self.sumButton.heightAnchor.constraint(equalToConstant: 50),
            self.sumButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),


        ])
    }
    
    @objc private func performStart(){
        self.clickSumButton?()
    }
}
