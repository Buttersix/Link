//
//  FeedView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationView {
                VStack {
                    ScrollView {
                        LazyVStack {
                            ForEach(0 ... 20, id: \.self) { _ in
                                NavigationLink {
                                    UserProfileView()
                                } label: {
                                    MessageRowView()
                                }
                                .foregroundColor(Color(UIColor.label))
                            }
                        }
                    }
                }
                .navigationTitle("Link")
                .navigationBarTitleDisplayMode(.inline)
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

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
