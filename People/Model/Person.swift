//
//  Person.swift
//  People
//
//  Created by Antonio Orozco on 9/19/19.
//  Copyright © 2019 Antonio Orozco. All rights reserved.
//

import Foundation

struct Person: Decodable {
    let name: String?
    let occupation: String?
    let address: String?
}
