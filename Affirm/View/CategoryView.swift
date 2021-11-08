//
//  CategoryView.swift
//  Affirm
//
//  Created by Selen Yanar on 8.11.2021.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        
        ZStack {
            
            VStack{
                
                VStack {
                    
                    Text("What would you like to focus on?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 30)
                    
                }
                .frame(width: 430, height: 115)
                .background(Color("10"))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 7, x: 3, y: 3)
                .edgesIgnoringSafeArea(.all)
        
                
                GridView()
                    .shadow(color: .gray, radius: 7, x: 3, y: 3)
                    .offset(y: -30)
                    .edgesIgnoringSafeArea(.all)
                
                
            }
            
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
