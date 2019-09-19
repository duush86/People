//
//  DataControllerDelegate.swift
//  People
//
//  Created by Antonio Orozco on 9/19/19.
//  Copyright © 2019 Antonio Orozco. All rights reserved.
//

import Foundation

protocol DataControllerDelegate: class {
    func didReceivedPeople(people: [Person])
}
