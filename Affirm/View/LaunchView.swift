//
//  LaunchView.swift
//  Affirm
//
//  Created by Selen Yanar on 29.10.2021.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("3")
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("affirm.face")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.bottom, 200)
                    
                    NavigationLink {
                        CategoryView()
                    } label: {
                        Text("Continue")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color("5"))
                            .cornerRadius(50)
                    }
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
