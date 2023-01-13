//
//  EmailLoginViewModel.swift
//  Link
//
//  Created by William Buttermore on 1/12/23.
//

import SwiftUI

class EmailLoginViewModel: ObservableObject {
    @Published var email: String = ""
    
    @Published var showError: Bool = false
    @Published var errorMessage: String = ""
    
    func handleError(error: Error) async {
        await MainActor.run(body: {
            errorMessage = error.localizedDescription
            showError.toggle()
        })
    }
}
