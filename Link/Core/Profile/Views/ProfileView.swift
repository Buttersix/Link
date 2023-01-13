//
//  ProfileView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct CustomColor {
    static let myColor = Color("Primary")
}

struct ProfileView: View {
    @State private var showNewMessageView = false
    @State private var selectedFilter: FilterViewModel = .groups
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack(alignment: .leading) {
                    headerView
                    
                    actionButtons
                    
                    userBio
                    
                    VStack(alignment: .center) {
                        ProfileImageGallery()
                    }
                    .frame(width: UIScreen.main.bounds.size.width, height: 360)
                    
                    filterButtons
                    
                    groupsView
                    
                    Spacer()
                }
            }
            
            // Post button
            
            Button {
                showNewMessageView.toggle()
            } label: {
                Text("Post")
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .frame(width: 64, height: 64)
            }
            .background(CustomColor.myColor)
            .cornerRadius(32.0)
            .padding()
            .fullScreenCover(isPresented: $showNewMessageView) {
                NewPostView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            //Color(.white)
            //    .ignoresSafeArea()
            
            Circle()
                .frame(width: 72, height: 72)
                .offset(x: 16, y: 30)
            
        }
        .frame(height: 90)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "gearshape")
                    .foregroundColor(Color(UIColor.label))
                    .font(.title3)
                    .padding(6)
                    // .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            }
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .foregroundColor(Color(UIColor.label))
                    .frame(width: 120, height: 36)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(CustomColor.myColor, lineWidth: 2))
            }
        }
        .padding(.trailing)
        .offset(x: 0, y: -22)
    }
    
    var userBio: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("William Buttermore")
                    .font(.title2).bold()
                
            }
            
            Text("butte134")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("My interests are hockey, chess, software engineering, and tennis! Love playing chess and I am also very interested in business!")
                .font(.subheadline)
                .padding(.vertical)
            
            
        }
        .padding(.horizontal)
    }
    
    var filterButtons: some View {
        HStack {
            ForEach(FilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? Color(UIColor.label) : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(CustomColor.myColor)
                            .frame(height: 3)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    var groupsView: some View {
        LazyVStack {
            ForEach(0 ... 4, id: \.self) { _ in
                GroupRowView()
            }
        }
    }
}
