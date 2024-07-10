//
//  View+Ext.swift
//  LevitateView
//
//  Created by Nouman Gul Junejo on 09/07/2024.
//

import SwiftUI

extension View{
    
    func createScrollToTop<ContentView: View>(content: ContentView, startOffset: Binding<CGFloat>, scrollViewOffset: Binding<CGFloat>, model: LevitatingViewModel) -> some View {
        ScrollViewReader { proxyReader in
            ZStack(alignment: .bottomTrailing) {
                ScrollView(.vertical, showsIndicators: false) {
                    content
                        .id("ScrollToTop")
                        .overlay(
                            GeometryReader { proxy -> Color in
                                DispatchQueue.main.async {
                                    if startOffset.wrappedValue == 0 {
                                        startOffset.wrappedValue = proxy.frame(in: .global).minY
                                    }
                                    let offset = proxy.frame(in: .global).minY
                                    scrollViewOffset.wrappedValue = offset - startOffset.wrappedValue
                                }
                                return Color.clear
                            }
                                .frame(width: 0, height: 0)
                            , alignment: .top
                        )
                }
                
                Button(action: {
                    // Scroll to top logic here
                    
                    withAnimation(.spring()) {
                        proxyReader.scrollTo("ScrollToTop", anchor: .top) // Scrolls to the top of the content
                    }
                }) {
                    model.image
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(model.colorForeground)
                        .padding()
                        .background(model.colorBackground)
                        .clipShape(Circle())
                        .padding(.trailing, 30)
                        .padding(.bottom, model.levitateBottomPadding)
                        .opacity(-scrollViewOffset.wrappedValue > model.levitateScrollOffset ? 1 : 0)
                        .animation(.easeInOut, value: scrollViewOffset.wrappedValue > 250)
                }
            }
        }
    }
}

