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
        NavigationView {
            VStack {
                List {
                    ForEach(myDistricts) { district in
                            
                            NavigationLink(
                                destination: DistrictDetail(district: district)
                            ) {
                                districtRow(item: district)
                            }
                    }.cornerRadius(2.0)
                    .shadow(radius: 10)
                }
                .navigationBarTitle(Text("Karnataka Districts"))
            }
            
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
                .clipped()
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

