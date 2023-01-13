//
//  CustomInputField.swift
//  Link
//
//  Created by William Buttermore on 1/3/23.
//

import SwiftUI

struct CustomInputField: View {
    let placeholderText: String
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                Group {
                    TextField(placeholderText, text: $text)
                }
                .font(Font.system(size: 20))
                .padding(.vertical, 5)
                .autocapitalization(.none)
            }
            
            Rectangle()
                .fill(.gray)
                .frame(height: 2)
                .clipShape(Capsule())
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(placeholderText: "Your school email", text: .constant(""))
    }
}
