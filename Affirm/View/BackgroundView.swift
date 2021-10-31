//
//  BackgroundView.swift
//  Affirm
//
//  Created by Selen Yanar on 30.10.2021.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        AnimatedBackground()
            .edgesIgnoringSafeArea(.all)
            .blur(radius: 50)
        
    }
}

struct AnimatedBackground: View {
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color("1"), Color("2"), Color("5"), Color("1")]
    
    var body: some View {
        
       LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
        .animation(Animation.easeInOut(duration: 6)
                    .repeatForever()
        ).onReceive(timer, perform: { _ in
            
            self.start = UnitPoint(x: 4, y: 0)
            self.end = UnitPoint(x: 0, y: 2)
            self.start = UnitPoint(x: -4, y: 20)
            self.start = UnitPoint(x: 4, y: 0)
        })
        
    }
}



struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
