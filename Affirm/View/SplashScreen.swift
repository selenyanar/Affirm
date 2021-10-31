//
//  SplashScreen.swift
//  Affirm
//
//  Created by Selen Yanar on 30.10.2021.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var animationFinished: Bool = false
    @State var removeSplash: Bool = false
    
    var body: some View {
        ZStack {
            AnimatedBackground()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 50)
            ZStack {
                
                if !removeSplash {
                    ZStack {
                        AnimatedBackground()
                            .edgesIgnoringSafeArea(.all)
                            .blur(radius: 50)
                     
                        Image("affirm.face")
                            .resizable()
                            .frame(width: 120, height: 120)
                    }
                }
            }
            .opacity(animationFinished ? 0 : 1)
        }
        .onAppear {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                
                withAnimation(.easeOut(duration: 1)) {
                    animationFinished = true
                    
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    removeSplash = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
