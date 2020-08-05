//
//  DistrictPlaces.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 04/08/20.
//  Copyright © 2020 Manjunath Shivakumara. All rights reserved.
//

import Foundation
import SwiftUI

struct DistrictPlaces : View {
    var district: District
    var text : String
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.orange, .blue, .green, .white]), center: .center, startAngle: .zero, endAngle: .degrees(360))
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("")
                .navigationBarTitle("\(text)")
            }
        }
    }
}

struct DistrictPlaces_Preview: PreviewProvider {
    static var previews: some View {
        return DistrictPlaces(district: myDistricts[0], text : "")
    }
}
