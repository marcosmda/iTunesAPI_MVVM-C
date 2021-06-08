//
//  Coordinator.swift
//  iTunesAPI_MVVM-C//
//
//  Created by Marcos Vinicius Majeveski De Angeli on 07/06/21.
//

import UIKit

/// A protocol that all the Coordinators must conform to
protocol Coordinator: AnyObject {
    var navigationController: UINavigationController {get set}
    var parentCoordinator: Coordinator? {get set}
    
    func start()
    func start(coordinator: Coordinator)
    func didFinish(coordinator: Coordinator)
}


/// A Class that all Coordinators must conform to
class BaseCoordinator: Coordinator {
    var childCoordinatoors: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController = UINavigationController()
    
    
    /// Starts self. It must be implemented individually
    func start() {
        fatalError("Must implement start method")
    }
    
    /// Starts a new coordinator, appending it to self's child coordinators
    /// - Parameter coordinator: The coordinator desired to be started
    func start(coordinator: Coordinator) {
        self.childCoordinatoors.append(coordinator)
        coordinator.parentCoordinator = self
        coordinator.start()
    }
    
    
    /// Remove a specific coordinator from the child coordinators' array and deinitializates it
    /// - Parameter coordinator: The coordinator that is going to be removed
    func didFinish(coordinator: Coordinator) {
        if let index = self.childCoordinatoors.firstIndex(where: {$0 === coordinator}){
            self.childCoordinatoors.remove(at: index)
        }
    }
}
