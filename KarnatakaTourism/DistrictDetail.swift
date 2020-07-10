//
//  DistrictDetail.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 20/01/20.
//  Copyright © 2020 Manjunath Shivakumara. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

var myDistrictInfo:[String] = ["About", "Places to visit", "Emergency Contact", "Hangout Places", "Events Happening", "Accomodation"]

struct DistrictDetail: View {
    var district: District
    
    var body: some View {
        VStack {
            MapView(coordinate: district.locationCoordinate)
                .padding(.top)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300.0)
            
            CircleImage(image: Image(district.imagename))
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(verbatim: district.name)
                        .font(.title)
                }
                
                HStack(alignment: .top) {
                    Text(verbatim: district.established)
                        .font(.subheadline)
                    Spacer()
                }
            }
            .padding(10)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<myDistrictInfo.count) { i in
                        VStack {
                            if myDistrictInfo[i] == "About" {
                                NavigationLink(destination: DistrictAbout(district: self.district, text: myDistrictInfo[i])) {
                                    Text("\(myDistrictInfo[i])")
                                }
                            } else {
                                Text("\(myDistrictInfo[i])")
                            }
                        }
                        Divider()
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing,20)
            }
            .frame(height: 40)
        }
    }
}

struct DistrictDetail_Preview: PreviewProvider {
    static var previews: some View {
        return DistrictDetail(district: myDistricts[0])
    }
}
