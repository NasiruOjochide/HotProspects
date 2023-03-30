//
//  ImageInterpolation.swift
//  HotProspects
//
//  Created by Danjuma Nasiru on 28/02/2023.
//
//SwiftUI naturally helps us scale our pictures just to look good on the device. in the case when a picture is very small with low pixels, swiftui would end up expanding the image using interpolation and it would end up looking blurred. To avoid this, we can set interpolation to none then it won't be blurred, just expanded.
import SwiftUI

struct ImageInterpolation: View {
    @State private var test = ""
    var body: some View {
        Image("example")
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
        
        TextField("test", text: $test)
    }
}

struct ImageInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        ImageInterpolation()
    }
}
