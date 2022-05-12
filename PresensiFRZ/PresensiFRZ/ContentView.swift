//
//  ContentView.swift
//  PresensiFRZ
//
//  Created by Sultan Alfaz on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
            HandView()
            FormBox()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    struct HandView: View {
        var body: some View {
            VStack{
                Image("infran")
                    .resizable()
                    .frame(width: 250, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .padding()
                
                Text("Login To PresensiFR")
                    .bold()
                    .font(.system(size: 25))
            }
        }
    }

    struct FormBox: View {
        
        @State var username: String = ""
        @State var password: String = ""
        
        var body: some View {
            VStack{
                TextField("Username...", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical, 5)
                
                SecureField("Password...", text: $password )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical, 5)
                    
                Button(action: {print("tapped")}){
                    HStack{
                        NavigationLink( destination: HomePageView().navigationBarBackButtonHidden(true)){
                        Text("Sign In")
                        Spacer()
                        }
                    }
                }
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                
                Button(action: {print("tapped")}){
                    VStack{
                        NavigationLink( destination:
                            ForgotPasswordView()){
                        Text("Forgot Password ?")
                        }
                    }
                }
                Button(action: {print("tapped")}){
                    VStack{
                        NavigationLink( destination:
                            SignUpView()){
                        Text("Sign Up")
                        }
                    }
                }
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}
