//
//  AuthViewController.swift
//  MyCoordinatorsTemplate
//
//  Created by Danyl Timofeyev on 21.12.2020.
//  Copyright © 2020 Danyl Timofeyev. All rights reserved.
//

import UIKit

final class AuthViewController: UIViewController {
    
    weak var coordinator: AuthCoordinator!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        Logger.initialization(entity: self)
    }
    
    deinit {
        Logger.deinitialization(entity: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loggedInPressed(_ sender: Any) {
        isLoggedIn = true
        coordinator.end()
    }
    
}
