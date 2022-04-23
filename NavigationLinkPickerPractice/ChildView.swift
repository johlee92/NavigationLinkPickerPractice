//
//  ChildView.swift
//  NavigationLinkPickerPractice
//
//  Created by Johnathan Lee on 4/23/22.
//

import SwiftUI

struct ChildView: View {
    var childNum = 1
    @Binding var tagSelected:Int?
    
    var body: some View {
        Text("I am view \(childNum)")
            .font(.largeTitle)
        
        Button {
            tagSelected = nil
        } label: {
            Text("Go back")
        }

    }
}

//struct ChildView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChildView()
//    }
//}
