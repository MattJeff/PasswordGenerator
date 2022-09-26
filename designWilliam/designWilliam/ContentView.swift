//
//  ContentView.swift
//  designWilliam
//
//  Created by Mathis Higuinen on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var passWord = "cDV76YKL$POdcc"
    @State var lenght: Float =  0.0
    @State var number = false
    @State var letters = false
    @State var symbole = false
    
    var body: some View {
        
        ZStack{
            Color("background").ignoresSafeArea()
            
            ScrollView(showsIndicators:false){
                VStack(spacing:20) {
                    HStack{
                        Text("Generate password")
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                        Spacer()
                        
                    }
                  
                    VStack(alignment:.leading){
                        Text("Generated Password".uppercased())
                            .font(.caption2)
                            .foregroundColor(Color("title"))
                        VStack{
                            HStack{
                                Spacer()
                                Text("\(passWord)").foregroundColor(.white)
                                Spacer()
                                Image("Copy")
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                            }.padding()
                        }.frame(maxWidth:.infinity)
                            .background(Color("backrec"))
                            .cornerRadius(5)
                        
                        
                        
                    }
                    
                    VStack(alignment:.leading){
                        Text("length:\(lenght)".uppercased())
                            .font(.caption2)
                            .bold()
                            .foregroundColor(Color("title"))
                        VStack{
                            Slider(value: $lenght, in: Float(4.0)...Float(32.0),step: 1.0) {
                                
                            } minimumValueLabel: {
                                Text("4")
                            } maximumValueLabel: {
                                Text("32")
                            }.padding()
                                .foregroundColor(.white)
                            
                        }.frame(maxWidth:.infinity)
                            .background(Color("backrec"))
                            .cornerRadius(5)
                        
                    }
                    VStack(alignment:.leading){
                        Text("Settings".uppercased())
                            .font(.caption2)
                            .bold()
                            .foregroundColor(Color("title"))
                        VStack(alignment:.leading){
                            
                            VStack{
                                
                                Toggle("Include numbers", isOn: $number).padding()
                                    .tint(Color("toggleison"))
                                
                                
                            }.frame(maxWidth:.infinity)
                                .background(Color("backrec"))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            
                        }
                        VStack(alignment:.leading){
                            
                            VStack{
                                
                                Toggle("Include letters", isOn: $letters).padding()
                                    .tint(Color("toggleison"))
                                
                                
                            }.frame(maxWidth:.infinity)
                                .background(Color("backrec"))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            
                        }
                        VStack(alignment:.leading){
                            
                            VStack{
                                
                                Toggle("Include symbols", isOn: $symbole).padding()
                                    .tint(Color("toggleison"))
                                
                                
                            }.frame(maxWidth:.infinity)
                                .background(Color("backrec"))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            
                        }
                        
                    }
                    VStack(alignment:.leading){
                        
                        VStack{
                            
                            Text("generate password".uppercased())
                                .bold()
                                .padding()
                            
                        }.frame(maxWidth:.infinity)
                            .background(EllipticalGradient(colors:[Color.blue, Color(.systemBlue)], center: .center, startRadiusFraction: 0.0, endRadiusFraction: 1))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                        
                    }
                    
                    levelCircle().padding(.top,32)
                    
                 
                }
            }
            .padding()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
