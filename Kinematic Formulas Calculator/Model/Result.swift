//
//  Result.swift
//  Kinematic Formulas Calculator
//
//  Created by Isaad Khan on 2023-02-07.
//

import SwiftUI

import Foundation

struct Result: Identifiable {
    let id = UUID()
    let initialVelocity: Double
    let acceleration: Double
    let time: Double
    let finalVelocity: String
    
}

let resultForPreviews = Result(initialVelocity: 0,
                               acceleration: 2,
                               time: 3,
                               finalVelocity: Text("Final velocity = 6m/s")

