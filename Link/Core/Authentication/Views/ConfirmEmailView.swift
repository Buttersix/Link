//
//  ConfirmEmailView.swift
//  Link
//
//  Created by William Buttermore on 1/12/23.
//

import SwiftUI

struct ConfirmEmailView: View {
    @StateObject var emailLoginModel: EmailLoginViewModel = .init()
    @State var showingPopup = false
    @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Verify School")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Please verify your school email below.")
                    .font(.title3)
                    .padding(.top)
                    .padding(.bottom, 100)
                
                Button {
                    handleClick()
                } label: {
                    HStack(spacing: 15) {
                        Image("google")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        
                        Text("Verify With Google")
                            .font(.headline).bold()
                            .foregroundColor(Color(UIColor.label))
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Capsule()
                            .strokeBorder(Color(UIColor.label), lineWidth: 2)
                    )
                }
                .padding(.bottom, 80)
                .padding(.horizontal)
                
                Button {
                    showingPopup = true
                } label: {
                    Text("Why is this needed?")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.bottom, 40)
                }
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

struct ConfirmEmailView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmEmailView()
    }
}

extension ConfirmEmailView {
    func handleClick() {
        print("Hello")
    }
}
