//
//  ContentView.swift
//  NavigationStackDemo
//
//  Created by Denys on 21.01.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack(path: $viewModel.path) {
//            NavigationLink("TITLE", destination: {
//                NextView()
//            })
            NavigationLink(value: "NEXT_VIEW", label: {
                Text("Click")
            })
            .navigationDestination(for: String.self) { value in
                NextView()
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                    viewModel.path.append("NEW ONE")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                        viewModel.path = []
                    })
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
