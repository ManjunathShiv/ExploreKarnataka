//
//  DistrictList.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 25/10/19.
//  Copyright © 2019 Manjunath Shivakumara. All rights reserved.
//

import SwiftUI

struct DistrictList: View {
    
    init(){
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().barTintColor = .none
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        
    }
    
    var body: some View {
        ZStack {
            
            AngularGradient(gradient: Gradient(colors: [.orange, .blue, .green, .white]), center: .center, startAngle: .zero, endAngle: .degrees(360))
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                NavigationView {
                    List {
                        ForEach(myDistricts) { district in

                                NavigationLink(
                                    destination: DistrictDetail(district: district)
                                ) {
                                    districtRow(item: district)
                                }.background(Color.clear)

                        }.cornerRadius(2.0)
                        .shadow(radius: 10)
                    }.background(Color.clear)
                    .navigationBarTitle(Text("Karnataka Districts"))
                }
                
            }.background(Color.clear)
        }
        
    }
}

struct DistrictList_Previews: PreviewProvider {
    static var previews: some View {
        DistrictList()
    }
}

struct districtRow : View {
    let item : District
    var body: some View {
       HStack(alignment: .center, spacing: 10.0) {
            VStack(alignment: .leading) {
                Image(item.imagename)
                    .resizable()
                    .frame(width: 100.0, height: 150.0, alignment: .center)
                .clipped()
                    .aspectRatio(contentMode: .fit)
            }
            VStack(alignment: .leading, spacing: 10.0){
                Text(item.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(item.established)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text("Literacy : \(item.literacy)")
                    .font(.footnote)
                Text("Sex Ratio : \(item.sexratio)")
                    .font(.footnote)
                Text("Population : \(item.population)")
                .font(.footnote)
                Text("Population Density : \(item.populationdensity)")
                .font(.footnote)
            }.padding(.init(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
       }
    }
}

