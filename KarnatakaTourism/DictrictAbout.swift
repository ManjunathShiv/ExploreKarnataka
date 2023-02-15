//
//  DictrictAbout.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 09/07/20.
//  Copyright © 2020 Manjunath Shivakumara. All rights reserved.
//

import Foundation
import SwiftUI

struct DistrictAbout : View {
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

struct DistrictAbout_Preview: PreviewProvider {
    static var previews: some View {
        return DistrictAbout(district: myDistricts[0], text : "")
    }
}
