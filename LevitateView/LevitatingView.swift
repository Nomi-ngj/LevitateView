//
//  SwiftUIView.swift
//  LevitateView
//
//  Created by Nouman Gul Junejo on 09/07/2024.
//

import SwiftUI

@propertyWrapper
public struct LevitatingView<Content: View>:View{
    
    public let wrappedValue: Content
    public let model:LevitatingViewModel!
    
    public init(content: Content, dataModel:LevitatingViewModel = LevitatingViewModel()) {
        self.wrappedValue = content
        self.model = dataModel
    }
    
    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0
    
    public var body: some View {
        
        createScrollToTop(content: wrappedValue, startOffset: $startOffset, scrollViewOffset: $scrollViewOffset, model:model)
    }
}


#if DEBUG
#Preview{
    LevitatingView<MockVerticalListView>(content: MockVerticalListView())
}
#endif

