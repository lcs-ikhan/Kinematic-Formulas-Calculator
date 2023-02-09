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
    let initialVelocity: String
    let acceleration: String
    let time: String
    let finalVelocity: String
    
}

let resultOneForPreviews = Result(initialVelocity: "0",
                               acceleration: "2",
                               time: "3",
                               finalVelocity: "Final velocity = 6m/s")

let resultTwoForPreviews = Result(initialVelocity: "4",
                                  acceleration: "5",
                                  time: "2",
                                  finalVelocity: "Final velocity = 14 m/s")

let historyForPreview = [resultOneForPreviews, resultTwoForPreviews]
