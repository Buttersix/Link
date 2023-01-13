//
//  NewPostView.swift
//  Link
//
//  Created by William Buttermore on 12/19/22.
//

import SwiftUI

struct NewPostView: View {
    @Environment(\.presentationMode) var mode
    @State private var group = ""
    @State private var caption = ""
    @State private var event = true
    @State private var currentDate = Date()
    @State private var currentTime = Date()
    var body: some View {
        NavigationView {
            VStack {
                
                GroupPostSearch()
                
                //HStack(alignment: .top) {
                HStack(alignment: .top) {
                    TextArea("What's your caption?", text: $caption)
                }
                .padding()
                //}
                //.padding()
                
                // save for later possibly
                
                /*
                Toggle("Event", isOn: $event)
                    .padding()
                
                VStack(alignment: .leading) {
                    if event {
                        Text("Select date")
                            .padding(.horizontal)
                        
                        DatePicker("", selection: $currentDate, displayedComponents: .date)
                        
                        Text("Select time")
                            .padding(.horizontal)
                        
                        DatePicker("", selection: $currentTime, displayedComponents: .hourAndMinute)
                    }
                }
                */
            }
            .safeAreaInset(edge: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack() {
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Text("Cancel")
                                .foregroundColor(CustomColor.myColor)
                        }
                        
                        Spacer()
                                                
                        Spacer()
                        
                        /*
                        Button {
                            
                        } label: {
                            Text("Next")
                                .bold()
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(CustomColor.myColor)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }
                         */
                        
                        Text("Post")
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(CustomColor.myColor)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
