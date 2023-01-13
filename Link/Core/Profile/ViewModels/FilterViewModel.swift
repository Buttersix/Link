//
//  FilterViewModel.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import Foundation

enum FilterViewModel: Int, CaseIterable {
    case groups
    case interests
    
    var title: String {
        switch self {
        case .groups: return "Groups"
        case .interests: return "Interests"
        }
    }
}
