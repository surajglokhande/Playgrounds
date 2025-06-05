//: [Previous](@previous)

import Foundation
import SwiftUI
import PlaygroundSupport

struct SwiftUI_geometry_reader: View {
    var body: some View {
        GeometryReader { geometryProxy in
            Rectangle()
                .fill(Color.yellow)
                .background(.gray)
            VStack{
                Text("cordinate: \(geometryProxy.frame(in: .global).origin.x), \(geometryProxy.frame(in: .global).origin.y)")
                Text("cordinate: \(geometryProxy.frame(in: .local).origin.x), \(geometryProxy.frame(in: .local).origin.y)")
            }
            .foregroundStyle(.blue)
        }
        .background(Color.red)
    }
}

PlaygroundPage.current.setLiveView(
        SwiftUI_geometry_reader()
            .frame(width: 393, height: 852)
            .background(.gray)
            .cornerRadius(47.33)
)
//: [Next](@next)

struct Dynamic_Island: View {
    var body: some View {
        Rectangle()
            .frame(width: 125, height: 37)
            .cornerRadius(125/2)
            .padding(.top, 11)
    }
}
