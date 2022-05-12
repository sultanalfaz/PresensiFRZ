//
//  HomePageView.swift
//  PresensiFRZ
//
//  Created by Sultan Alfaz on 19/04/22.
//

import SwiftUI

struct HomePageView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    var body: some View {
        TabView {
            VStack  {
                Image("LOGOGRITraya-NEW")
                    .resizable()
                    .frame(width: 350, height: 200)
                    .cornerRadius(20)
                Spacer()
                ScrollView{
                    HStack{
                        NavigationLink( destination: EnterAbsentView()){
                            Image("Humaaans Standing")
                                .frame(width: 200, height: 200, alignment: .center)
                        }
                        NavigationLink( destination: OutAbsentView()){
                            Image("Humaaans Sitting")
                                .frame(width: 200, height: 200, alignment: .center)
                        }
                    }
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            HistoryPage()
            .tabItem {
                Image(systemName: "clock")
                Text("History")
            }
            ProfilePageView()
            .tabItem {
                Image(systemName: "person.crop.circle.fill")
                Text("Profile")
            }
        }
        .navigationBarTitle(Text("Presensi FR"))
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            HomePageView()
            HomePageView()
        }
    }
}
