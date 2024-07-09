//
//  LevitatingViewModel.swift
//  LevitateView
//
//  Created by Nouman Gul Junejo on 09/07/2024.
//

import SwiftUI

public struct LevitatingViewModel {
    public var image: Image
    public var levitateBottomPadding: CGFloat
    public var levitateScrollOffset: CGFloat
    public var colorBackground: Color
    public var colorForeground: Color

    // Initializer with default values
    public init(image: Image = Image(systemName: "arrow.up"),
                levitateBottomPadding: CGFloat = 20,
                levitateScrollOffset: CGFloat = 250,
                colorBackground: Color = .red,
                colorForeground: Color = .white) {
        self.image = image
        self.levitateBottomPadding = levitateBottomPadding
        self.levitateScrollOffset = levitateScrollOffset
        self.colorBackground = colorBackground
        self.colorForeground = colorForeground
    }
}
