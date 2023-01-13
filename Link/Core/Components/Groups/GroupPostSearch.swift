//
//  GroupPostSearch.swift
//  Link
//
//  Created by William Buttermore on 12/28/22.
//

import SwiftUI

struct GroupPostSearch: View {
    @State private var selection = ""
        let groups = ["Hockey Club", "Computer Scientist Anonymous", "Bowling Club", "Chess"]

        var body: some View {
            List {
                Picker("Select a group", selection: $selection) {
                    ForEach(groups, id: \.self) {
                        Text($0)
                            .foregroundColor(CustomColor.myColor)
                    }
                }
                .pickerStyle(.menu)
            }
            .onAppear {
                self.selection = groups.first ?? ""
            }
        }
}
