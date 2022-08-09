//
//  HanoiRow.swift
//  Demo_AppleApplication
//
//  Created by Nguyen Van Thanh on 07/08/2022.
//

import SwiftUI

struct HanoiRow: View {
    
    var hanoi: Hanoi
    
    var body: some View {
        HStack {
            hanoi.image
                .resizable()
                .frame(width: 50, height: 50, alignment: .leading)
            Text(hanoi.name)
            
            Spacer()
            
            if hanoi.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct HanoiRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HanoiRow(hanoi: hanois[0])
            HanoiRow(hanoi: hanois[1])
            HanoiRow(hanoi: hanois[2])
            HanoiRow(hanoi: hanois[3])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
