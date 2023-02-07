//
//  VelocityWithTime.swift
//  Kinematic Formulas Calculator
//
//  Created by Isaad Khan on 2023-02-07.
//

import SwiftUI

struct VelocityWithTime: View {
    @State var initialVelocity: Double = 3
    @State var acceleration: Double = 2
    @State var time: Double = 1
    var body: some View {
        NavigationView {
        
            VStack{
               Image("VWithT")
                    .scaledToFit()
                    
                    Spacer()
            }
                
              
                
                .navigationTitle("Finding Velocity with Time")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct VelocityWithTime_Previews: PreviewProvider {
    static var previews: some View {
        VelocityWithTime()
    }
}
