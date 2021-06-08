//
//  AppCoordinator.swift
//  iTunesAPI_MVVM-C//
//
//  Created by Marcos Vinicius Majeveski De Angeli on 07/06/21.
//

import UIKit


/// The coordinator responsible for all the app, it is the main coordinator and has different children At first is passes the user through the Onboarding Scene, but once completed, it must go to the Search Scene
class AppCoordinator: BaseCoordinator {
    var window = UIWindow(frame: UIScreen.main.bounds)
    
    override func start() {
        //Do it's own initialization, setting the navigationController's rootView and making the window visible
        self.navigationController.navigationBar.isHidden = true
        self.window.rootViewController = self.navigationController
        self.window.makeKeyAndVisible()
        
        //Sends the user to the Onboarding Scene
        let coordinator = OnboardingCoordinator()
        coordinator.navigationController = self.navigationController // Sets the same navigationController to be the childs navigationController
        self.start(coordinator: coordinator) // Starting the OnboardingCoordinator as a child of AppCoordinator
    }
}
