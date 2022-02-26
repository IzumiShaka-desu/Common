//
//  TagsCard.swift
//  gemmu
//
//  Created by Akashaka on 09/02/22.
//

import SwiftUI

public struct TagsCard: View {
 public   var text: String
    var fontSize: CGFloat = 12.0
    var bgColor: Color = Color.green
 public init(
    text: String,
    fontSize: CGFloat = 12.0,
    bgColor: Color = Color.green
  ){
    self.text = text
    self.fontSize = fontSize
    self.bgColor = bgColor
  }
public    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: fontSize, weight: .regular))
                .lineLimit(2)
                .frame(minWidth: 20, maxWidth: 64, alignment: .center)
                .foregroundColor(.white)
                .padding(5)
                .background(bgColor)
                .cornerRadius(5)
        }

    }
}

struct TagsCard_Previews: PreviewProvider {
    static var previews: some View {
        TagsCard(text: "tags")
    }
}
