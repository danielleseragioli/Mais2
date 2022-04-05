//
//  OnboardingViewController.swift
//  Mais2
//
//  Created by DanielleSeragioli on 05/04/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupView()
    }
  
    // MARK: - Set Up
    
    private func setupView(){
        let onboardingView = OnboardingView()
         
        onboardingView.clickStartButton = {
            let vc = SumViewController()
            vc.navigationItem.largeTitleDisplayMode = .never
            self.navigationItem.titleView?.tintColor = .systemBackground
            self.navigationItem.leftBarButtonItem?.tintColor = .systemBackground
            self.navigationController?.pushViewController(vc, animated: true)
         }
         
         self.view = onboardingView
    }
    

}
