//
//  ViewModel.swift
//  NavigationStackDemo
//
//  Created by Denys on 21.01.2023.
//

import SwiftUI
import Foundation

class ViewModel: ObservableObject {
    @Published var path: [String] = [] {
        didSet {
            print("DID SET PATH \(path)")
        }
    }
}
