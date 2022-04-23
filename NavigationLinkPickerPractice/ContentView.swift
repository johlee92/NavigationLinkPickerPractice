//
//  ContentView.swift
//  NavigationLinkPickerPractice
//
//  Created by Johnathan Lee on 4/23/22.
//

import SwiftUI

struct ContentView: View {
    @State var tagSelected:Int?
    @State var pickerSelected = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $pickerSelected) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                    Text("6").tag(6)
                    Text("7").tag(7)
                    Text("8").tag(8)
                    Text("9").tag(9)
                    Text("10").tag(10)
                } label: {
                    Text("")
                }
                .pickerStyle(.wheel)
            
            NavigationLink(
                destination: ChildView(childNum: pickerSelected, tagSelected: $tagSelected)
                    .navigationBarBackButtonHidden(true),
                tag: 1,
                selection: $tagSelected,
                label: {
                    Text("Go to view \(pickerSelected)")
                })
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
