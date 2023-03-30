//
//  CustomSwipeActions.swift
//  HotProspects
//
//  Created by Danjuma Nasiru on 01/03/2023.
//

import SwiftUI

struct CustomSwipeActions: View {
    var body: some View {
        List(["dey", "play", "you", "hear"], id: \.self){
            Text("\($0)")
                .swipeActions{
                    Button(role: .destructive){
                        //
                    } label: {
                        Label("Send Message", systemImage: "message")
                    }
                    Button(){
                        //
                    } label: {
                        Label("Archive", systemImage: "envelope")
                    }
                    .tint(.blue)
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false){
                    Button {
                        print("Hi")
                    } label: {
                        Label("Pin", systemImage: "pin")
                    }
                    .tint(.orange)
                }
        }
    }
}

struct CustomSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        CustomSwipeActions()
    }
}
