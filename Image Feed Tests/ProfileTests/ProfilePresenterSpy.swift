//
//  ProfilePresenterSpy.swift
//  Image Feed Tests
//
//  Created by Bakhadir on 06.03.2024.
//

import Foundation
import ImageFeed

final class ProfilePresenterSpy: ProfilePresenterProtocol {
    var view: ImageFeed.ProfileViewControllerProtocol?
    var viewDidLoadCalled: Bool = false
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
    
    func makeAlert() {
    }
}
