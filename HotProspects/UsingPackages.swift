//
//  UsingPackages.swift
//  HotProspects
//
//  Created by Danjuma Nasiru on 01/03/2023.
//
import SamplePackage
import SwiftUI

struct UsingPackages: View {
    let possibleNumbers = Array(1...60)
    
    var body: some View {
        Text(results)
    }
    
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.joined(separator: ", ")
    }
}

struct UsingPackages_Previews: PreviewProvider {
    static var previews: some View {
        UsingPackages()
    }
}
