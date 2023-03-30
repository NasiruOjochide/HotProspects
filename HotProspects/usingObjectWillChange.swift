//
//  usingObjectWillChange.swift
//  HotProspects
//
//  Created by Danjuma Nasiru on 28/02/2023.
//

import SwiftUI

@MainActor class DelayedUpdater : ObservableObject{
    var value = 0 {
        willSet{
            objectWillChange.send()
        }
    }
    
    init(){
        for i in 1...10{
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i), execute: {
                self.value += 1
            })
        }
    }
}

struct usingObjectWillChange: View {
    @StateObject var updater = DelayedUpdater()
    
    var body: some View {
        Text("Value is: \(updater.value)")
    }
}

struct usingObjectWillChange_Previews: PreviewProvider {
    static var previews: some View {
        usingObjectWillChange()
    }
}
