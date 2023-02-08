//
//  VelocityWithTime.swift
//  Kinematic Formulas Calculator
//
//  Created by Isaad Khan on 2023-02-07.
//

import SwiftUI

struct VelocityWithTime2: View {
    @State var initialVelocity: Double = 3
    @State var acceleration: Double = 2
    @State var time: Double = 1
    @State var desiredPrecision: Int = 2
    
    

    var body: some View {
        NavigationView {
        
            VStack(spacing: 15){
               Image("VWithT")
                    .scaledToFit()
                    
                    
                Group{
                    Text("Inital Velocity")
                        .font(.title2)
                        .bold()
                    
                    Slider(value: $initialVelocity,
                           in: -100...100,
                           label: { Text("Length") },
                           minimumValueLabel: {Text("-100") },
                           maximumValueLabel: {Text("100")})
                    
                    Text("\(initialVelocity.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                        .font(.title2)
                }
                Group{
                    Text("Acceleration")
                        .font(.title2)
                        .bold()
                    
                    Slider(value: $acceleration,
                           in: -100...100,
                           label: { Text("Acceleration") },
                           minimumValueLabel: {Text("-100") },
                           maximumValueLabel: {Text("100")})
                    
                    Text("\(acceleration.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                }
                Group {
                    Text("Time")
                        .font(.title2)
                        .bold()
                    
                    Slider(value: $time,
                           in: -100...100,
                           label: { Text("Time") },
                           minimumValueLabel: {Text("-100") },
                           maximumValueLabel: {Text("100")})
                    
                    Text("\(time.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    
                }
                Group{
                    Text("Velocity")
                }
            }
            
                
              
                
                .navigationTitle("Finding Velocity with Time")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct VelocityWithTime2_Previews: PreviewProvider {
    static var previews: some View {
        VelocityWithTime()
    }
}