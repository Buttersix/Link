//
//  PhoneInputField.swift
//  Link
//
//  Created by William Buttermore on 1/3/23.
//

import SwiftUI

struct PhoneInputField: View {
    let placeholderText: String
    @Binding var number: String
    var contentType: UITextContentType = .telephoneNumber
    var body: some View {
        VStack {
            HStack {
                Group {
                    TextField(placeholderText, text: $number)
                        .keyboardType(.numberPad)
                }
                .font(Font.system(size: 20))
                .padding(.vertical, 5)
                .textContentType(contentType)
            }
            
            Rectangle()
                .fill(.gray)
                .frame(height: 2)
                .clipShape(Capsule())
            //Divider()
            //    .background(Color(.darkGray))
        }
    }
}

struct PhoneInputField_Previews: PreviewProvider {
    static var previews: some View {
        PhoneInputField(placeholderText: "Your phone number", number: .constant(""))
    }
}
