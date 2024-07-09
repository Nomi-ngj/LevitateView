//
//  MockVerticalListView.swift
//  LevitateView
//
//  Created by Nouman Gul Junejo on 09/07/2024.
//

import SwiftUI

public struct MockVerticalListView: View {
    
    public init() {} // Make the initializer public
        
    public var body: some View {
        VStack(spacing: 12){
            ForEach(1...50,id: \.self) {index in
                HStack(spacing: 15){
                    ZStack{
                        Circle()
                            .fill(Color.gray.opacity (0.5))
                            .frame(width: 60, height: 60)
                        Text("\(index)")
                            .foregroundColor(.secondary)
                            .font(.body)
                    }
                    VStack(alignment: .leading, spacing: 6, content: {
                        
                        ForEach([0, 80, 160], id: \.self) { trailingPadding in
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color.gray.opacity(0.5))
                                .frame(height: 22)
                                .padding(.trailing, CGFloat(trailingPadding))
                        }
                    })
                }
            }
        }.padding()
    }
}

#if DEBUG
#Preview{
    MockVerticalListView()
}
#endif
