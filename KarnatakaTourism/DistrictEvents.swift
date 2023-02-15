//
//  DistrictEvents.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 04/08/20.
//  Copyright © 2020 Manjunath Shivakumara. All rights reserved.
//

import Foundation
import SwiftUI

struct DistrictEvents : View {
    var district: District
    var text : String
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("")
                .navigationBarTitle("\(text)")
            }
        }
    }
}

struct DistrictEvents_Preview: PreviewProvider {
    static var previews: some View {
        return DistrictEvents(district: myDistricts[0], text : "")
    }
}
