//
//  HomeView.swift
//  HomeView
//
//  Created by Anthony on 24/08/21.
//

import SwiftUI

struct HomeView: View {
    
    let today = Date()
    let formatter = DateFormatter()
 
    var body: some View {
        ScrollView {
            VStack {
               HStack {
                   HeaderView(title: "Schedule", subtitle: "Terça, 24 de ago")
                   Button(action: { print("new scheduler")}, label: { Image(systemName: "plus") })
                }.padding([.leading, .trailing])
                ForEach(0..<3) { num in
                    VStack {
                        Card {
                            HeaderView(title: "title", subtitle: "subtitle")
                        }
                    }.padding([.leading, .trailing])
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
