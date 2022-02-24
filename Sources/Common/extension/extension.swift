//
//  extension.swift
//  
//
//  Created by Akashaka on 24/02/22.
//
import SwiftUI
public extension Color {
    public init(decimalRed red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }

    public static var flatDarkBackground: Color {
        return Color(decimalRed: 36, green: 36, blue: 36)
    }
    public static var flatWhiteBackground: Color {Color(red: 255, green: 255, blue: 255, opacity: 0.3)}

    public static var flatDarkCardBackground: Color {
        return Color(decimalRed: 46, green: 46, blue: 46)
    }
}
