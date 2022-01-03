//
//  UDM.swift
//  Affirm
//
//  Created by Selen Yanar on 12.12.2021.
//

import Foundation

class UDM {
    
    let defaults = UserDefaults.standard
    var affirmationArray = [""]
    
    
    func getSelectedAffirmations() -> [String] {
        
        let affirmations = defaults.object(forKey: "SelectedAffirmations") as? [String] ?? [String]()
        
        return affirmations
        
    }
}
