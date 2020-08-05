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
            Color.orange
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
