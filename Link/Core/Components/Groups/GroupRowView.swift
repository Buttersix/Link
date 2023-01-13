//
//  GroupRowView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct GroupRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Bowling Club")
                    .font(.subheadline).bold()
                    .foregroundColor(Color(UIColor.label))
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 0) {
                Text("34 members")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        
    }
}

struct GroupRowView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRowView()
    }
}
