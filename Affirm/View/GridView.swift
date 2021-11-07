//
//  GridView.swift
//  Affirm
//
//  Created by Selen Yanar on 7.11.2021.
//

import SwiftUI

struct GridView: View {
   
    var body: some View {
        
        ScrollView {
            GridCellView(categoryName: "Love",
                         sampleAffirmation: "This is a sample affirmation for Love",
                         icon: "heart",
                         color: "9")
            GridCellView(categoryName: "Health",
                         sampleAffirmation: "This is a sample affirmation for Health",
                         icon: "heart.text.square",
                         color: "8")
            GridCellView(categoryName: "Growth",
                         sampleAffirmation: "This is a sample affirmation for Growth",
                         icon: "person.fill",
                         color: "10")
            GridCellView(categoryName: "Career",
                         sampleAffirmation: "This is a sample affirmation for Career",
                         icon: "line.diagonal.arrow",
                         color: "11")
        }
    }
}



struct GridCellView: View {
    
    @State var categoryName: String = ""
    @State var sampleAffirmation: String = ""
    @State var icon: String = ""
    @State var color: String = ""
    
    var body: some View {
        
        ZStack {
            Button {
                print("SELECTED BUTTON ACTION")
            } label: {
                
                VStack {
                    
                    HStack {
                        
                        Text(categoryName)
                        Spacer()
                        Image(systemName: icon)
                        
                    }
                    .padding(.horizontal, 25)
                    
                    HStack {
                        
                        Text(sampleAffirmation)
                            .padding(.all, 10)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal, 15)
                    
                }
                .font(.title3)
                .frame(width: 350, height: 150)
                .padding(.horizontal, 10)
                .background(Color(color))
                .foregroundColor(.white)
                .cornerRadius(30)
                
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
