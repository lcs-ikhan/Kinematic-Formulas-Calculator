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
        VStack{
            HStack(spacing: 30){
                Spacer()
                Text("InitialVelocity:\(somePriorResult.initialVelocity.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .scaledToFill()
                
                Text("Acceleration:\(somePriorResult.acceleration.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .scaledToFill()
                
                Text("Time:\(somePriorResult.time.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .scaledToFill()
                
                Spacer()
                
            }
            Text(somePriorResult.finalVelocity)
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultForPreviews)
    }
}
