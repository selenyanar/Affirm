//
//  SignUpView.swift
//  Affirm
//
//  Created by Selen Yanar on 3.11.2021.
//

import SwiftUI

struct SignUpView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            AnimatedBackground()
                .blur(radius: 50)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("affirm.face")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 20)
                
                TextField(" First name", text: self.$password)
                    .autocapitalization(.none)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .border(Color.white, width: 1)
                    .background(Color.clear)
                    .padding(.bottom, 10)
                
                TextField(" Last name", text: self.$password)
                    .autocapitalization(.none)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .border(Color.white, width: 1)
                    .background(Color.clear)
                    .padding(.bottom, 10)
                
                TextField(" Email", text: self.$email)
                    .autocapitalization(.none)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .border(Color.white, width: 1)
                    .background(Color.clear)
                    .padding(.bottom, 10)
                
                TextField(" Password", text: self.$password)
                    .autocapitalization(.none)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .border(Color.white, width: 1)
                    .background(Color.clear)
                    .padding(.bottom, 10)
                
                TextField(" Re-enter password", text: self.$password)
                    .autocapitalization(.none)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .border(Color.white, width: 1)
                    .background(Color.clear)
                    .padding(.bottom, 30)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign Up")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .opacity(1)
                })
                .frame(width: 300, height: 60)
                .border(Color.white, width: 1)
                .background(Color.clear)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
