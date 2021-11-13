//
//  HoldBreathView.swift
//  Affirm
//
//  Created by Selen Yanar on 13.11.2021.
//

import SwiftUI

struct HoldBreathView: View {
    var body: some View {
        ZStack {
            
            
            VStack {
                
                Text("Take a deep breath and press the button")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 140)
            
                ZStack {
                    
                    LottieView(filename: "breathe1")
                    Image("affirm.face")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .offset(y: -60)
                    
                }
                
            }
        }
        .background(Color("3"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HoldBreathView_Previews: PreviewProvider {
    static var previews: some View {
        HoldBreathView()
    }
}
