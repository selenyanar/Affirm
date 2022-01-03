//
//  CategoryView.swift
//  Affirm
//
//  Created by Selen Yanar on 8.11.2021.
//

import SwiftUI

struct CategoryView: View {
    
    @State public var selectionStarted = false
    
    var body: some View {
        
        ZStack {
            
            Color(.white)
                .ignoresSafeArea()
            
            VStack{
                
                HStack {
                    
                    Text("What would you like to focus on?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 30)
                    
                }
                .frame(width: 430, height: 115)
                .background(Color("3"))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 7, x: 3, y: 3)
                .edgesIgnoringSafeArea(.all)
                
                
                GridView()
                    .shadow(color: .gray, radius: 7, x: 3, y: 3)
                    .offset(y: -30)
                    .edgesIgnoringSafeArea(.all)
            

                
                
            }
            HStack {
                
                Spacer()
                Text("XXX categories selected")
                
                NavigationLink {
                    
                    MainView()
                    
                } label: {
                    
                    Image(systemName: "arrow.forward.circle")
                        .font(.title)
                    
                }
                
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 30)
            .foregroundColor(.white)
            .frame(width: 430, height: 100)
            .background(Color("3"))
            .cornerRadius(30)
            .offset(y: 420)
            
        }
        .navigationBarHidden(true)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
