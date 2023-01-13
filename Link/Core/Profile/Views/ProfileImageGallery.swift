//
//  ProfileImageGallery.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct ProfileImageGallery: View {
    private var numOfImages = 3
    var body: some View {
        GeometryReader { proxy in
            TabView {
                ForEach(0..<numOfImages) { num in
                    Image("\(num)")
                        .resizable()
                        .scaledToFill()
                        .overlay(Color.black.opacity(0.1))
                        .tag(num)
                }
            }.tabViewStyle(PageTabViewStyle())
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
            .padding(.bottom)
            .frame(width: proxy.size.width, height: proxy.size.height)
        }
    }
}

struct ProfileImageGallery_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageGallery()
    }
}
