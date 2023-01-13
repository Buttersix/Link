//
//  PrivateMessageView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct PrivateMessageView: View {
    @State private var showNewPrivateMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationView {
                VStack {
                    ScrollView {
                        LazyVStack {
                            ForEach(0 ... 3, id: \.self) { _ in
                                NavigationLink {
                                    GroupProfileView()
                                } label: {
                                    GroupRowView()
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Private Messages")
                .navigationBarTitleDisplayMode(.inline)
            }
            
            // Private message button
            
            Button {
                showNewPrivateMessageView.toggle()
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .frame(width: 64, height: 64)
            }
            .background(CustomColor.myColor)
            .cornerRadius(32.0)
            .padding()
            .fullScreenCover(isPresented: $showNewPrivateMessageView) {
                Text("New Private Message View")
            }
        }
    }
}

struct PrivateMessageView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateMessageView()
    }
}
