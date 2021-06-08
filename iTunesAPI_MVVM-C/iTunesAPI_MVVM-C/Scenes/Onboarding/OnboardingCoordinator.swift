//
//  OnboardingCoordinator.swift
//  iTunesAPI_MVVM-C
//
//  Created by Marcos Vinicius Majeveski De Angeli on 07/06/21.
//

import Foundation

class OnboardingCoordinator: BaseCoordinator {
    
    override func start() {
        //Sets the respective ViewController to be shown to the user
        let viewController = OnboardingViewController()
        
        //Initializes the ViewModel for the Onboarding and references it to the OnboardingViewController
        let onboardingViewModel = OnboardingViewModel()
        viewController.viewModel = onboardingViewModel
        
        self.navigationController.viewControllers = []
    }
}
