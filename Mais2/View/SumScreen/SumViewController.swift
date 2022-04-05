//
//  SumViewController.swift
//  Mais2
//
//  Created by DanielleSeragioli on 05/04/22.
//

import UIKit

class SumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        title = "Mais 2"
        
        setupView()
    }

    
    private func setupView(){
        
 
       let sumView = SumView()
        
        sumView.clickSumButton = {
            
            let vc = SumViewModel()
            sumView.resultLabel.isHidden = false
           
            let doubleNumber = Double(sumView.numberTextField.text ?? "0") ?? 0
            let result = String(vc.showNumberAndResult(numberInserted: doubleNumber).result)
            
            sumView.resultLabel.text = "\(sumView.numberTextField.text ?? "0") + 2 = \(result) 😉"
        }
        
        self.view = sumView

      
    }
    
    
}

