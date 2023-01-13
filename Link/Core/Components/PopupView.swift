//
//  PopupView.swift
//  Link
//
//  Created by William Buttermore on 1/12/23.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack (spacing: .zero) {
            title
            content
            Spacer()
        }
        .frame(width: 300, height: 400)
        .background(Color(UIColor.secondarySystemBackground))
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}

private extension PopupView {
    var title: some View {
        Text ("Why is this needed?")
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.label))
            .padding(.top, 100)
    }
    
    var content: some View {
        Text ("This allows us to verify you are the owner of your email account, as well as verifying that you are a college student. Link is not affiliated with your college or university.")
            .font(.body)
            .padding(.top, 20)
            .foregroundColor(.gray)
            .padding(.horizontal)
    }
          
}
