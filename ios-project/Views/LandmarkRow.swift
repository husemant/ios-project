//
//  LandmarkRow.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview("turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("salmon") {
    LandmarkRow(landmark: landmarks[1])
}

#Preview("combined") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
