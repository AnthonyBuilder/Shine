//
//  Card.swift
//  Card
//
//  Created by Anthony on 24/08/21.
//

import SwiftUI
struct Card<Content>: View where Content: View {
    
    private let content: () -> Content
    private let padding: EdgeInsets
    
    /// Creates an instance of the Card view.
    ///
    /// - Parameters:
    ///   - padding: The padding around the card's content. A default value is provided.
    ///   - content: The view content to be rendered on top of the card.
    init(padding: EdgeInsets = EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 24), @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.padding = padding
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(AppStrings.Colors.cardBacking))
                .shadow(color: Color(AppStrings.Colors.cardShadow), radius: 6, x: 0, y: 3)
            content()
                .padding(padding)
        }
    }
}
