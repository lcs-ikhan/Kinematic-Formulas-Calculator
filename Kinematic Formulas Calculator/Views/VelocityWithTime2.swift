//
//  VelocityWithTime.swift
//  Kinematic Formulas Calculator
//
//  Created by Isaad Khan on 2023-02-07.
//

import SwiftUI

struct VelocityWithTime2: View {
    
    @State var priorResults: [Result] = []
    @Binding var history: [Result]
    
    @State var initialVelocity: String = ""
        
    var initialVelocityAsOptionalDouble: Double? {
        
        guard let unwrappedInitialVelocity = Double(initialVelocity) else {
            
            return nil
        }
        
        return unwrappedInitialVelocity
    }
    @State var acceleration: String = ""
    
    var accelerationAsOptionalDouble: Double? {
        
        guard let unwrappedAccerleration = Double(acceleration) else {
            return  nil
        }
        return unwrappedAccerleration
    }
    
    @State var time: String = ""
    
    var timeAsOptionalDouble: Double? {
        
        guard let unwrappedTime = Double(time) else {
            return nil
        }
        return unwrappedTime
    }
    
    var finalVelocity: String {
        
        guard let initialVelocityAsDouble = initialVelocityAsOptionalDouble else {
            return "Please enter a positive, numeric value."
        }
        guard let accelerationAsDouble = accelerationAsOptionalDouble else {
            
            return "Please enter a positive, numeric value"
        }
        
        guard let timeAsDouble = timeAsOptionalDouble else {
            
            return "Please enter a positive, numeric value"
           
        }
        
        let finalVelocity = initialVelocityAsDouble + accelerationAsDouble * timeAsDouble
        
        return "\(finalVelocity.formatted(.number.precision(.fractionLength(3))))"
    }

    var body: some View {
        NavigationView {
        
            VStack(spacing: 15){
                Image("VWithT")
                    .scaledToFit()
                
                
                Group{
                    Text("Inital Velocity")
                        .font(.title2)
                        .bold()
                    
                    
                    
                    
                    TextField("0", text: $initialVelocity)
                        .font(.title2)
                    
                        .padding(.leading, 190.0)
                    
                }
                Group{
                    Text("Acceleration")
                        .font(.title2)
                        .bold()
                    
                    TextField("0", text: $acceleration)
                        .font(.title2)
                    
                        .padding(.leading, 190.0)
                }
                Group {
                    Text("Time")
                        .font(.title2)
                        .bold()
                    
                    TextField("0", text: $time)
                        .font(.title2)
                    
                        .padding(.leading, 190.0)
                    
                }
                Group{
                    Text("Final Velocity")
                        .font(.title2)
                        .bold()
                    
                    Text("\(finalVelocity)")
                        .font(.title2)
                    
                }
                
                .navigationTitle("Finding Velocity with Time")
                .navigationBarTitleDisplayMode(.inline)
                
                Button(action: {
                    
                    
                    
                    let latestResult = Result(initialVelocity: initialVelocity,
                                             acceleration: acceleration,
                                             time: time,
                                             finalVelocity: finalVelocity)
                    
                    priorResults.append(latestResult)
                }, label: {
                    Text("Save Result")
                } )
                .buttonStyle(.bordered)
                .padding()
                
                HStack{
                    Text("History")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                List(priorResults.reversed()) { currentResult in
                    HStack{
                      
                        ResultView(somePriorResult: currentResult)
                        
                    }
                }
                
                
            }
                
              
        }
    }
}

struct VelocityWithTime2_Previews: PreviewProvider {
    static var previews: some View {
        VelocityWithTime2( history: Binding.constant(historyForPreview))
        }
}
