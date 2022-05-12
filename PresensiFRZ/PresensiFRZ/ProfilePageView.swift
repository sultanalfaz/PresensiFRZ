//
//  ProfilePageView.swift
//  PresensiFRZ
//
//  Created by Sultan Alfaz on 19/04/22.
//

import SwiftUI

struct ProfilePageView: View {
    var body: some View {
        VStack{
            Image(systemName: "person.crop.circle.fill")
                .frame(width: 100, height: 100)
            Form{
                Section{
                    Text("Name")
                    Text("NIK")
                    Text("NIP")
                    Text("Telephone Number")
                    Text("Email")
                }
            }
            NavigationLink( destination: ContentView().navigationBarBackButtonHidden(true)){
            Text("Log Out")
            }
            .padding()
            .background(Color.purple)
            .cornerRadius(10)
            .foregroundColor(.white)
        }
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
