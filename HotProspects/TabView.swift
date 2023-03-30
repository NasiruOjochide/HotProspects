//
//  TabView.swift
//  HotProspects
//
//  Created by Danjuma Nasiru on 27/02/2023.
//

import SwiftUI

struct TabVieww: View {
    @State private var selectedTab = "one"
    var body: some View {
        TabView(selection: $selectedTab){
            Text("Tab 1")
                .onTapGesture {
                    selectedTab = "Two"
                }
                .tabItem {
                    Label("One", systemImage: "star")
                }
                .tag("One")
            
            Text("Tab 2")
                .onTapGesture {
                    selectedTab = "One"
                }
                .tabItem {
                    Image(systemName: "circle")
                            Text("Two")
                }
                .tag("Two")
        }
    }
}

struct TabVieww_Previews: PreviewProvider {
    static var previews: some View {
        TabVieww()
    }
}
