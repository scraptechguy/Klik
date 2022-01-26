//
//  LaunchView.swift
//  Klik
//
//  Created by Rostislav Brož on 1/26/22.
//

import SwiftUI

struct LaunchView: View {
    // Access data in ContentModel class
     
    @EnvironmentObject var model: ContentModel
    
    
    var body: some View {
        ZStack {
            HomeView()
            
            if model.guideShown == false {
                Text("Tap to increase count, \nhold to reset")
                    .foregroundColor(model.fontClr)
                    .font(.system(size: model.screenSize.width / 12))
                    .padding([.bottom], model.screenSize.width / 0.8)
                
                Button(action: {model.changeGuideStatus()},
                       label: {
                            ZStack {
                                Rectangle()
                                    .fill(model.fontClr)
                                    .frame(width: model.screenSize.width / 1.2, height: model.screenSize.width / 8)
                                    .cornerRadius(model.screenSize.width / 28)
                                
                                Text("Okay, bring it on!")
                                    .foregroundColor(Color.black)
                                    .font(.system(size: model.screenSize.width / 15))
                            }
                }).padding([.top], model.screenSize.width / 0.57)
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
            .environmentObject(ContentModel())
    }
}
