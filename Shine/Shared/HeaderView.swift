//
//  HeaderView.swift
//  HeaderView
//
//  Created by Anthony on 24/08/21.
//

import SwiftUI
/// The double header view used at the top of root views within Hour Blocks.
struct HeaderView: View {
    
    private let title: String
    private let subtitle: String

    
    /// Creates an instance of the Header view.
    ///
    /// - Parameters:
    ///   - title: The text string for the main label on the bottom.
    ///   - subtitle: The text string for the secondary label at the top.
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(subtitle.uppercased())
                        .font(.system(size: 14, weight: .semibold, design: .default))
                        .opacity(0.5)
                    Text(title)
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .lineLimit(1)
                }
                Spacer()
            }
        }
    }
}
