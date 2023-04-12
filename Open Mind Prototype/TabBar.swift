//
//  TabView.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/24/23.
//

import SwiftUI

/*
 * adding peer to peer connection/
 */

struct TabBar: View {
    @State var activeTab = 0
    var body: some View {
        TabView(selection: $activeTab) {
            HomePage()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            CWRU()
                .tabItem {
                    Label("CWRU", systemImage: "list.bullet.indent")
                }
                .tag(1)
            
            Cleveland(doctor: Doctors.all)
                .tabItem {
                    Label("Cleveland", systemImage: "message.fill")
                }
                .tag(2)
            
            Info()
                .tabItem {
                    Label("Information", systemImage: "info.circle")
                }
                .tag(3)
            
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(4)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
