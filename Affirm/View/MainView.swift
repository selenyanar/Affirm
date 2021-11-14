//
//  MainView.swift
//  Affirm
//
//  Created by Selen Yanar on 8.11.2021.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedIndex = 1
    
    let tabBarImageNames = ["gear", "pencil", "person" ]
    
    var body: some View {
        
        ZStack {
            VStack  {
                
                ZStack {
                    
                    switch selectedIndex {
                    case 0:
                        GridView()
                    case 1:
                        AffirmationView()
                    case 2:
                        Text("Profile")
                    default:
                        AffirmationView()
                        
                        
                    }
                }
  
                Spacer()
                
                HStack {
                    ForEach(0..<3) { num in
                        Button {
                            selectedIndex = num
                        } label: {
                            Spacer()
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                }
                
                .frame(width: 430, height: 80)
                .background(Color("3"))
                .cornerRadius(30)
                
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct AffirmationView: View {
    var body: some View {
        
        ZStack {
            
            BackgroundView()
            
            Text("This is an affirmation")
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
