//
//  CircleImage.swift
//  swiftUai
//
//  Created by Weslley Tavares de Aguiar e Quadros on 17/06/19.
//  Copyright © 2019 Weslley Tavares de Aguiar e Quadros. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
 
    var image : Image
    var body: some View {
       image
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.gray, lineWidth: 4))
        .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
#endif
