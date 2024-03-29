//
//  ContentView.swift
//  RemindersApp
//
//  Created by AITUSR on 28/03/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isPresented:  Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Hello World")
                Spacer()
                Button {
                    isPresented = true
                } label: {
                    Text("Add List")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.headline)
                }.padding()
            }.sheet(isPresented: $isPresented, content: {
                NavigationView {
                    AddNewListView { name, color in
                        // TODO: Save the list
                    }
                }
            })
        }.padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HomeView()
}
