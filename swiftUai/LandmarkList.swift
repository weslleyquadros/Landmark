//
//  LandmarkList.swift
//  swiftUai
//
//  Created by Weslley Tavares de Aguiar e Quadros on 19/06/19.
//  Copyright © 2019 Weslley Tavares de Aguiar e Quadros. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        NavigationView{
            
            List(landmarkData) { landmark in
                
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark) //usar coleções de Landmark, elementos diretamente.
                }
                
            }
             .navigationBarTitle(Text("Landmarks"))
        }
        
        
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
            }
}
}
#endif
