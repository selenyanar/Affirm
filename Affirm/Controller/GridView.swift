//
//  GridView.swift
//  Affirm
//
//  Created by Selen Yanar on 7.11.2021.
//

import SwiftUI

struct GridView: View {
    
    let love = GridCellView(isSelected: false,
                            categoryName: "Love",
                            sampleAffirmation: "This is a sample affirmation for Love",
                            icon: "heart",
                            color: "9",
                            affirmations: Affirmations().love)
    let health = GridCellView(isSelected: false,
                              categoryName: "Health",
                              sampleAffirmation: "This is a sample affirmation for Health",
                              icon: "heart.text.square",
                              color: "1",
                              affirmations: Affirmations().health)
    let growth = GridCellView(isSelected: false,
                              categoryName: "Growth",
                              sampleAffirmation: "This is a sample affirmation for Growth",
                              icon: "person.fill",
                              color: "10",
                              affirmations: Affirmations().personalGrowth)
    let career = GridCellView(isSelected: false,
                              categoryName: "Career",
                              sampleAffirmation: "This is a sample affirmation for Career",
                              icon: "line.diagonal.arrow",
                              color: "11",
                              affirmations: Affirmations().career)
    let relationship = GridCellView(isSelected: false,
                                    categoryName: "Relationships",
                                    sampleAffirmation: "This is a sample affirmation for Relationships",
                                    icon: "person.3.fill",
                                    color: "5",
                                    affirmations: Affirmations().relationships)
    
    var body: some View {
        
        ScrollView {
            love
            health
            growth
            career
            relationship
            
        }
    }
}

struct GridCellView: View{
    
    @State var isSelected = false
    @State var categoryName: String = ""
    @State var sampleAffirmation: String = ""
    @State var icon: String = ""
    @State var color: String = ""
    let affirmations: [String]
    
    var body: some View {
        
        ZStack {
            Button {
                print("\(categoryName) is selected \(isSelected)")
                isSelected.toggle()
                UDM().defaults.set(affirmations, forKey: "SelectedAffirmations")
                print(UDM().getSelectedAffirmations())
                
                //Currently it is overwriting the SelectedAffirmations key with the new selection
                //We need to:
                //Select & deselect the categories (add & remove from SelectedAffirmations
                //Select more than one category
                
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
                .background(isSelected ? Color(color) : Color("6"))
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
