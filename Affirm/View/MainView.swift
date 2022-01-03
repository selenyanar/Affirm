//
//  MainView.swift
//  Affirm
//
//  Created by Selen Yanar on 8.11.2021.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedIndex = 1
    
    let tabBarImageNames = ["gear", "pencil", "person"]
    
    var body: some View {
        
        ZStack {
            VStack  {
                ZStack {
                    
                    switch selectedIndex {
                    case 0:
                        
                        VStack {
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
                            
                        }
                        
                    case 1:
                        AffirmationView()
                    case 2:
                        Text("Profile")
                    default:
                        AffirmationView()
                        
                        
                    }
                }
                Spacer()
                
            }
            .edgesIgnoringSafeArea(.all)
            
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
            .padding(.top, 810)
            
        }
        .navigationBarHidden(true)
    }
}


struct AffirmationView: View {
    
    var displayedAffirmation = "Please select a category"
    
    var body: some View {
        ZStack {
            
            BackgroundView()

            Text(UDM().getSelectedAffirmations().randomElement() ?? "XXX")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .foregroundColor(.white)
                .padding()
            
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
