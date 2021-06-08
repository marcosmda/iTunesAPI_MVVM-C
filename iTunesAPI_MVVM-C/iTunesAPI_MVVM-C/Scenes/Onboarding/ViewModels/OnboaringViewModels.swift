//
//  OnboardingViewModel.swift
//  iTunesAPI_MVVM-C
//
//  Created by Marcos Vinicius Majeveski De Angeli on 07/06/21.
//

import UIKit


/// The type used for OnboardingViewModel, we use this protocol because when an injection is made to the ViewController, the dependency will not be a concrete type. Best for testing, and different implementations
protocol OnboardingViewModelType {
    
    var viewDelegate: OnboardingViewModelViewDelegate? { get set }

    // Events=
    
    func start()
    
    func didClosedOnboarding(from controller: UIViewController)
}


/// The protocol that sets a coordinator delegate to the OnboardingViewModel. Used for events that need the coordinator to update
protocol OnboardingViewModelCoordinatorDelegate: AnyObject {
    
}


/// The protocol that sets a view delegate to the OnboardingViewModel. Used for events that need the view to update
protocol OnboardingViewModelViewDelegate: AnyObject {
    
}

/// The object of OnboardingViewModel
class OnboardingViewModel {
    
    weak var coordinatorDelegate: OnboardingViewModelCoordinatorDelegate?
    
    weak var viewDelegate: OnboardingViewModelViewDelegate?
}
