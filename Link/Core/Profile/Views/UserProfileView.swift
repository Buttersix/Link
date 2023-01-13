//
//  UserProfileView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct UserProfileView: View {
    @State private var selectedFilter: FilterViewModel = .groups
    @Environment(\.presentationMode) var mode
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                userHeaderView
                
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
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension UserProfileView {
    var userHeaderView: some View {
        ZStack(alignment: .bottomLeading) {
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
                    .offset(x: 16, y: 30)
            }
        }
        .frame(height: 90)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "paperplane")
                    .foregroundColor(Color(UIColor.label))
                    .font(.title3)
                    .padding(6)
                    // .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
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
    }
    
    var groupsView: some View {
        LazyVStack {
            ForEach(0 ... 4, id: \.self) { _ in
                GroupRowView()
                Divider()
            }
        }
    }
}
