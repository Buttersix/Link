//
//  GroupProfileView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct GroupProfileView: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButtons
            
            userBio
            
            HStack {
                Text("Messages")
                    .font(.headline)
                    .padding()
            }
            
            Divider()
            
            messageProfileView
            
            Spacer()
        }
    }
}

struct GroupProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GroupProfileView()
    }
}

extension GroupProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            //Color(.white)
            //    .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(CustomColor.myColor)
                        .offset(x: 16, y: 12)
                }
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
            
        }
        .frame(height: 90)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Button {
                
            } label: {
                // change this if statement to be if user.ownsGroup or something like that
                let user = false
                if user {
                    Text("Edit group")
                        .font(.subheadline).bold()
                        .foregroundColor(Color(UIColor.label))
                        .frame(width: 120, height: 36)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(CustomColor.myColor, lineWidth: 2))
                } else {
                    Text("Join group")
                        .font(.subheadline).bold()
                        .foregroundColor(Color(UIColor.label))
                        .frame(width: 120, height: 36)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(CustomColor.myColor, lineWidth: 2))
                }
            }
        }
        .padding(.trailing)
        .offset(x: 0, y: -22)
    }
    
    var userBio: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Bowling Club")
                    .font(.title2).bold()
                
            }
            
            Text("46 members")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("We bowl! It's fun! Come join us! @Coffman Memorial Union every Tuesday night!")
                .font(.subheadline)
                .padding(.vertical)
            
            
        }
        .padding(.horizontal)
    }
    
    var messageProfileView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    MessageRowView()
                }
            }
        }
    }
}
