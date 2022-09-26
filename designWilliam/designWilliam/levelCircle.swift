//
//  levelCircle.swift
//  designWilliam
//
//  Created by Mathis Higuinen on 22/09/2022.
//

import SwiftUI

struct levelCircle: View {
    var body: some View {
        Meter()
    }
}

struct levelCircle_Previews: PreviewProvider {
    static var previews: some View {
        levelCircle()
    }
}
struct Meter: View {
    var body: some View {
        ZStack{
            ZStack{
                Circle()
                    .trim(from: 0,to:0.5)
                    .stroke(Color("backrec"),lineWidth: 55)
                    .frame(width: 280,height: 280)
                Circle()
                    .trim(from: 0,to:0.38)
                    .stroke(AngularGradient(gradient: .init(colors: [Color(.blue),Color(.systemCyan)]), center: .center,angle: .init(degrees: 180)),lineWidth: 55)
                    .frame(width: 280,height: 280)
            }.rotationEffect(.init(degrees: 180))
            
            ZStack(alignment:.bottom){
                Color(.systemCyan)
                    .frame(width:2,height: 95)
                Circle()
                    .fill(Color(.systemCyan))
                    .frame(width:15,height:15)
            }
            .offset(y:-35)
            .rotationEffect(.init(degrees: 45))
        }
    }
}
