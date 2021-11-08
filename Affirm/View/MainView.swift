//
//  MainView.swift
//  Affirm
//
//  Created by Selen Yanar on 8.11.2021.
//

import SwiftUI

struct MainView: View {
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
