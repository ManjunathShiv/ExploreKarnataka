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
        
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ZStack() {
                LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                List {
                    ForEach(myDistricts) { district in
                        
                        NavigationLink(
                            destination: DistrictDetail(district: district)
                        ) {
                            districtRow(item: district)
                        }
                        .background(Color.clear)
                        .padding(.bottom)
                        .padding(.top)
                        .tint(.black)
                    }.cornerRadius(2.0)
                        .shadow(radius: 10)
                        .listRowBackground(Color.clear)
                }
            }
            .navigationBarTitle("Karnataka District")
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
                    .fontWeight(.bold)
                Text(item.established)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                Text("Literacy : \(item.literacy)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Sex Ratio : \(item.sexratio)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Population : \(item.population)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Population Density : \(item.populationdensity)")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
            .padding()
       }
    }
}

