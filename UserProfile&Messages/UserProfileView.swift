//
//  UserProfileView.swift
//  UserProfile&Messages
//
//  Created by nika razmadze on 06.12.23.
//

import SwiftUI

struct UserProfileView: View {
    
    @State private var nameText: String = ""
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    @State private var dateText: String = ""
    @State private var countryText: String = ""

    
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.gray)
                    .frame(width: 171, height: 175)
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 1)
                            .scaleEffect(1.1)
                    )
                    .padding()
                
                Image(systemName: "camera.fill")
                                .padding()
                                .opacity(0.8)
                                .clipShape(Circle())
                                .offset(x: -10, y: -10)
            }
            
            Spacer()
            
            Text("Name")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Name", text: $nameText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            Spacer()
            
            Text("Email")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Email", text: $emailText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            
            Spacer()
            
            Text("Password")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            SecureField("*******", text: $passwordText)
                .textContentType(.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            Text("Date of Birth")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("6/12/2023", text: $dateText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            Text("Country/Region")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Georgia", text: $countryText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            Button(action: {

            }) {
                Text("Save")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .frame(width: 221, height: 45)
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    UserProfileView()
}
