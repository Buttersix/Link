//
//  MainNavView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct MainNavView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            GroupsView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "person.3")
                }.tag(1)
            PrivateMessageView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                }.tag(2)
            ProfileView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(3)
        }
        .accentColor(CustomColor.myColor)
    }
}

struct MainNavView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavView()
    }
}
