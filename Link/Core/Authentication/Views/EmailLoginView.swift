//
//  LoginView.swift
//  Link
//
//  Created by William Buttermore on 1/2/23.
//

import SwiftUI

struct EmailLoginView: View {
    @StateObject var emailLoginModel: EmailLoginViewModel = .init()
    @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Your school email")
                        .font(Font.system(size: 24))
                    
                    CustomInputField(placeholderText: "Email", text: $emailLoginModel.email)
                }
                .padding(.horizontal, 32)
                .padding(.top, 60)
                .padding(.bottom)
                
                HStack {
                    Text("You will receive an email with a verification link to login.")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                .padding(.bottom)
                .padding(.horizontal, 32)
                
                NavigationLink {
                    ConfirmEmailView()
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(CustomColor.myColor)
                        .clipShape(Capsule())
                        .padding()
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .safeAreaInset(edge: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack() {
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Text("Cancel")
                                .foregroundColor(CustomColor.myColor)
                        }
                        
                        Spacer()
                                                
                        Spacer()
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

struct EmailLoginView_Previews: PreviewProvider {
    static var previews: some View {
        EmailLoginView()
    }
}
