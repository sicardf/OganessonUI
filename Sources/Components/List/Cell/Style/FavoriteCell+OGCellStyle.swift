//
//  FavoriteCell+OGCellStyle.swift - OganessonUI
//
//  Created by Flavien SICARD
//  LGPL 3.0 License
//

import SwiftUI

struct FavoriteOGCellStyle: OGCellStyle {

    @Environment(\.isLoading) private var isLoading

    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                configuration.image?
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(height: 24)
                VStack(alignment: .leading, spacing: 4) {
                    if let title = configuration.title {
                        Text(title)
                            .font(.body)
                            .foregroundColor(Color(white: 0.1))
                    }
                    if let subtitle = configuration.subtitle {
                        Text(subtitle)
                            .font(.footnote)
                            .foregroundColor(Color(white: 0.3))
                    }
                }
                .lineLimit(1)
                Spacer()
                HStack(spacing: 8) {
                    if let info = configuration.info {
                        Text(info)
                            .font(.footnote)
                            .foregroundColor(Color(white: 0.3))
                    }
                    if isLoading {
                        ProgressView()
                            .frame(width: 24, height: 24)
                    } else if configuration.isSelected {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                    } else {
                        Image(systemName: "star")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
            }
            if let callout = configuration.callout {
                Text(callout)
                    .font(.footnote)
                    .foregroundColor(Color(white: 0.5))
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
    }
}

extension OGCellStyle where Self == FavoriteOGCellStyle {
    static var favorite: Self { .init() }
}

struct FavoriteOGCellStyle_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OGCell_Previews.previews
                .ogCellStyle(.favorite)
        }
    }
}
