//
//  MessageRowView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct MessageRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(CustomColor.myColor)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("William Buttermore")
                            .font(.subheadline).bold()
                        
                        Text("24min")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("Bowling Club")
                        .foregroundColor(.gray)
                        .font(.footnote)

                    Text("Come join us @7PM at Coffman tonight! We will have pizza and drinks! Anyone is welcome! :)")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // Action buttons: Comment, Add to Calendar
            
            HStack {
                Spacer()
                
                Button {
                    // action
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                        .foregroundColor(CustomColor.myColor)
                }
                
                Spacer()
                
                Button {
                    // action
                } label: {
                    Image(systemName: "calendar.badge.plus")
                        .font(.subheadline)
                        .foregroundColor(CustomColor.myColor)
                }
                
                Spacer()
            }
            .padding([.top, .bottom], 6)
            
            Divider()
        }
        .padding(.top)
        .padding(.horizontal)
        
    }
}

struct MessageRowView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView()
    }
}
