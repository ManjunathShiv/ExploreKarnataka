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

struct myDistOptions : Identifiable {
    let id = UUID()
    let optionName : String
}


struct DistrictDetail: View {
    var district: District
    
    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                MapView(coordinate: district.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height:UIScreen.screenHeight/2.0)
                    .background(Color.clear)
                    
                
                CircleImage(image: Image(district.imagename))
                    .offset(x: 0, y: -200.0)
                    .padding(.bottom, -200.0)
                
                Text(verbatim: district.name)
                    .font(.title)
                    .foregroundColor(Color.black)
                
                Text(verbatim: district.established)
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 10.0)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        NavigationLink(destination: DistrictAbout(district: self.district, text: "About")) {
                            Text("\("About")")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictPlaces(district: self.district, text: "Places to visit")) {
                            Text("\("Places to visit")")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictEmergency(district: self.district, text: "Emergency Contact")) {
                            Text("\("Emergency Contact")")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictHangout(district: self.district, text: "Hangout Places")) {
                            Text("\("Hangout Places")")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictEvents(district: self.district, text: "Events Happening")) {
                            Text("\("Events Happening")")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                        
                        NavigationLink(destination: DistrictWeather(district: self.district, text: "Weather")) {
                            Text("\("Weather")")
                                .frame(width:100, height: 100)
                                .background(Color.green)
                                .multilineTextAlignment(.center)
                                .cornerRadius(40.0)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(10)
                }
            }
        }
    }
}



struct DistrictDetail_Preview: PreviewProvider {
    static var previews: some View {
        return Group {
            DistrictDetail(district: myDistricts[0])
        }
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
