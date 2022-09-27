//
//  NavigationCloseViewModifier.swift
//  TarotApp
//
//  Created by MacOS on 23/02/2022.
//

import SwiftUI

struct NavigationCloseViewModifier: ViewModifier {
    @Environment(\.presentationMode) var presentationMode
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
            }
    }
    
}
extension View {
    
    func applyClose() -> some View {
        self.modifier(NavigationCloseViewModifier())
    }
}
