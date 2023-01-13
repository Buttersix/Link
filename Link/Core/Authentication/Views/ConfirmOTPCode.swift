//
//  ConfirmOTPCode.swift
//  Link
//
//  Created by William Buttermore on 1/12/23.
//

import SwiftUI

struct ConfirmOTPCode: View {
    @Environment(\.presentationMode) var mode
    @State var number: String
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 20) {
                    PhoneInputField(placeholderText: "Verification Code", number: $number)
                }
                .padding(.horizontal, 32)
                .padding(.top, 60)
                .padding(.bottom)
                
                NavigationLink {
                    FeedView()
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
                            Text("Back")
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
