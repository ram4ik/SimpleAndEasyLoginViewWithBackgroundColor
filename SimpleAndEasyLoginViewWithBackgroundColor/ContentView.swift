//
//  ContentView.swift
//  SimpleAndEasyLoginViewWithBackgroundColor
//
//  Created by ramil on 28.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple, Color.red]), startPoint: .bottomLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 14) {
                
                Image(systemName: "person.circle")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .offset(x: 135)
                    .opacity(0.2)
                
                Group {
                    Text("Email").foregroundColor(.gray)
                    TextField("Email...", text: self.$email).padding()
                        .background(Color(red: 234.0/255.0, green: 233.0/255.0, blue: 235.0/255.0, opacity: 0.5))
                        .cornerRadius(12)
                    }
                
                Group {
                    Text("Password").foregroundColor(.gray)
                    TextField("Password...", text: self.$password).padding()
                        .background(Color(red: 234.0/255.0, green: 233.0/255.0, blue: 235.0/255.0, opacity: 0.5))
                        .cornerRadius(12)
                    }
                
                Button(action: {
                    
                }) {
                    Text("Login").padding(16)
                        .foregroundColor(.white)
                }.background(Color(red: 234.0/255.0, green: 233.0/255.0, blue: 235.0/255.0, opacity: 0.5))
                    .cornerRadius(10)
                    .offset(x: 150)
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
