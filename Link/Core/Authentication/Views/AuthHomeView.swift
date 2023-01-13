//
//  LoginView.swift
//  Link
//
//  Created by William Buttermore on 1/2/23.
//

import SwiftUI

struct AuthHomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                VStack {
                    HStack {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .frame(width: 64.0, height: 64.0)
                        
                        Text("Link")
                            .font(.system(size: 56))
                            .fontWeight(.semibold)
                    }
                    
                    HStack {
                        Text("Enhance your college experience")
                            .fontWeight(.bold)
                    }
                }
                
                Spacer()
                
                VStack {
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create Account")
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .frame(width: 320, height: 46)
                            .background(CustomColor.myColor)
                            .clipShape(Capsule())
                    }
                    
                    NavigationLink {
                        EmailLoginView()
                    } label: {
                        Text("Login With Email")
                            .font(.subheadline).bold()
                            .foregroundColor(Color(UIColor.label))
                            .frame(width: 320, height: 46)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(CustomColor.myColor, lineWidth: 2))
                    }
                    
                    NavigationLink {
                        PhoneLoginView()
                    } label: {
                        Text("Login With Phone Number")
                            .font(.subheadline).bold()
                            .foregroundColor(Color(UIColor.label))
                            .frame(width: 320, height: 46)
                            .overlay(RoundedRectangle(cornerRadius: 30).stroke(CustomColor.myColor, lineWidth: 2))
                    }
                }
                .padding(.bottom, 50)
            }
        }
    }
}

struct AuthHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHomeView()
    }
}
