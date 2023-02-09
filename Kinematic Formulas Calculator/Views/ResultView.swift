//
//  ResultView.swift
//  Kinematic Formulas Calculator
//
//  Created by Isaad Khan on 2023-02-07.
//

import SwiftUI

struct ResultView: View {
    @State var desiredPrecision: Double = 1
    // MARK: Stored properties
    let somePriorResult: Result
    // MARK: Computed properties
    
    var body: some View{
        VStack {
            
            Text("Initial Velocity:\(somePriorResult.initialVelocity)")
            
            Text("Acceleration:\(somePriorResult.acceleration)")
            
            Text("Time:\(somePriorResult.time)")
            
            Text(somePriorResult.finalVelocity)
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultOneForPreviews)
    }
}
