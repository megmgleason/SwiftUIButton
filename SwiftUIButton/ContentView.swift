//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by MEG G on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        Button(action: {
        //            // What to perform
        //            print("Hello World tapped!")
        //        }) {
        //            // How the button looks like
        //            Text("Hello World")
        //                .fontWeight(.bold)
        //                .font(.title)
        //                .padding()
        //                .background(Color.purple)
        //                .cornerRadius(40)
        //                .foregroundColor(.white)
        //                .padding(10)
        ////                .border(Color.purple, width: 5)
        ////            overlay(
        ////                RoundedRectangle(cornerRadius: 40)
        ////                    .stroke(Color.purple, lineWidth: 5)
        ////            )
        //        }
        
        //        Button(action: {
        //            print("Delete tapped!")
        //        }) {
        //            HStack {
        //                Image(systemName: "trash")
        //                    .font(.title)
        //                Text("Delete")
        //                    .fontWeight(.semibold)
        //                    .font(.title)
        //            }
        //            .padding()
        //            .foregroundColor(.white)
        //            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        //            .cornerRadius(40)
        //        }
       VStack{
            Button(action: {
                print("Share tapped!")
            }) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                    Text("Share")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action: {
                print("Edit tapped!")
            }) {
                HStack {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                    Text("Edit")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action: {
                print("Delete tapped!")
            }) {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
        }
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View { configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            //.foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"),Color("LightGreen")]), startPoint: .leading, endPoint: .trailing)) .cornerRadius(40)
            .padding(.horizontal, 20)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
