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
        ZStack(alignment: .top) {
            AngularGradient(gradient: Gradient(colors: [.orange, .blue, .green, .white]), center: .center, startAngle: .zero, endAngle: .degrees(360))
                .edgesIgnoringSafeArea(.all)
 
            VStack() {
                    MapView(coordinate: district.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height:300)
                    .background(Color.clear)
                
                CircleImage(image: Image(district.imagename))
                    .offset(x: 0, y: -130)
                    .padding(.bottom, -130)
                
                Text(verbatim: district.name)
                    .font(.title)
                    .foregroundColor(Color.white)
                Text(verbatim: district.established)
                    .font(.subheadline)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10.0)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        NavigationLink(destination: DistrictAbout(district: self.district, text: myDistrictInfo[0])) {
                            Text("\(myDistrictInfo[0])")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictPlaces(district: self.district, text: myDistrictInfo[1])) {
                            Text("\(myDistrictInfo[1])")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictEmergency(district: self.district, text: myDistrictInfo[2])) {
                            Text("\(myDistrictInfo[2])")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictHangout(district: self.district, text: myDistrictInfo[3])) {
                            Text("\(myDistrictInfo[3])")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictEvents(district: self.district, text: myDistrictInfo[4])) {
                            Text("\(myDistrictInfo[4])")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictAccomodation(district: self.district, text: myDistrictInfo[5])) {
                            Text("\(myDistrictInfo[5])")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                }.padding(.leading, 10.0)
                .padding(.trailing, 10.0)
            }
        }
    }
}



struct DistrictDetail_Preview: PreviewProvider {
    static var previews: some View {
        return DistrictDetail(district: myDistricts[0])
    }
}
