//
//  ItemList.swift
//  gemmu
//
//  Created by Akashaka on 09/02/22.
//

import SwiftUI
import NetworkImage

public struct ItemList: View {
  var title: String
  var releaseDate: String
  var platforms: [String]
  var genres: [String]
  var imageUrl: String
  var id: Int
public init(
    title: String,
    releaseDate: String,
    platforms: [String],
    genres: [String],
    imageUrl: String,
    id: Int
) {
  self.id = id
  self.imageUrl = imageUrl
  self.genres = genres
  self.platforms = platforms
  self.releaseDate = releaseDate
  self.title = title

  }
public  var body: some View {
    ZStack(alignment: .leading) {
      Color.flatDarkCardBackground
      HStack {
        ZStack {
          if #available(macOS 12.0, *) {
            if #available(iOS 15.0, *) {
              NetworkImage(url: URL(string: imageUrl)) { image in
                image.resizable()
              } placeholder: {
                ProgressView()
              } fallback: {
                Image(systemName: "photo")                     }
              .frame(width: 75, height: 75)
              .clipped()
              .background().cornerRadius(10)
            } else {
              NetworkImage(url: URL(string: imageUrl)) { image in
                image.resizable()
              } placeholder: {
                ProgressView()
              } fallback: {
                Image(systemName: "photo")                     }
              .frame(width: 75, height: 75)
              .clipped()
            }
          } else {
            NetworkImage(url: URL(string: imageUrl)) { image in
              image.resizable()
            } placeholder: {
              ProgressView()
            } fallback: {
              Image(systemName: "photo")                     }
            .frame(width: 75, height: 75)
            .clipped()
            // Fallback on earlier versions
          }
        }
        .frame(width: 70, height: 70, alignment: .center)

        VStack(alignment: .leading) {
          Text(title).foregroundColor(.white)
            .font(.headline)
            .fontWeight(.bold)
            .lineLimit(2)
            .padding(.bottom, 5)
          Text(releaseDate)
            .padding(.bottom, 5).foregroundColor(.white)

          HStack(alignment: .center) {
            ForEach(platforms, id: \.self) { platform in
              TagsCard(
                text: platform,
                bgColor: .green)
            }
          }
          .padding(.bottom, 5)

          HStack {
            ForEach(genres, id: \.self) { genre in
              TagsCard(text: genre, bgColor: .pink)
            }
          }
        }
        .padding(.horizontal, 5)

      }
      .padding(15)
    }        .clipShape(RoundedRectangle(cornerRadius: 15))
  }

}

struct ItemList_Previews: PreviewProvider {
  static var previews: some View {

    let platforms: [String] = ["PS5", "PC"]

    ItemList(
      title: "title",
      releaseDate: "address",
      platforms: platforms,
      genres: ["action", "rpg"],
      imageUrl: Constants.profileImageUrl,
      id: 3498
    )
  }
}
