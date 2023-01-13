//
//  RegisterView.swift
//  Link
//
//  Created by William Buttermore on 1/2/23.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var mode
    @State private var phoneNumber = ""
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Your phone number")
                        .font(Font.system(size: 24))
                    
                    PhoneInputField(placeholderText: "6505555555", number: $phoneNumber)
                }
                .padding(.horizontal, 32)
                .padding(.top, 60)
                .padding(.bottom)
                
                HStack {
                    Text("You will receive a text with a verification code.")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                .padding(.bottom)
                .padding(.horizontal, 32)
                
                HStack {
                    Text("By clicking continue, you agree to our [terms of service](https://google.com) and our [privacy policy](https://google.com).")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                .padding(.bottom)
                .padding(.horizontal, 32)
                
                Button {
                    print("Continue")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
