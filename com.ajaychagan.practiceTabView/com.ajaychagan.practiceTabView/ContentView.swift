//
//  ContentView.swift
//  Ajay Chagan
//  October 31, 2026
//  Assignment 11
//

import SwiftUI

//Add structures to the code to seperate out the tabs
//Figure out how to change the backgrounds of each tab
//Attempted background image but did not look good, review for later
//Customer fonts may be needed for future builds

struct HalloweenView: View {
    var body: some View {
        VStack {
            Text("Halloween")
                .font(.title)
            Image("Halloween Image")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
            Text("Halloween is an annual celebration observed on October 31 that blends ancient Celtic harvest rituals, Christian traditions of remembering the dead, and modern secular fun.").font(.body)
        }
        .padding()
    }
}

struct FunCostumeView: View {
    var body: some View {
        VStack {
            Text("Fun Costumes!")
                .font(.title)
            Image("Fun Costume Image")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
            Text("People often dress up in fun and creative costumes.  Some costumes have significant traditional or religious meaning and some are just for fun.").font(.body)
        }.padding()
    }
}

struct EnjoyWithFriendsView: View {
    var body: some View {
        VStack {
            Text("Enjoy with Friends")
                .font(.title)
            Image("Party Image")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
            Text("People will often get together and dress up and enjoy each other's company while having a good time.  Some traditions give significant meaning to these events honoring people from their past.").font(.body)
        }.padding()
    }
}


struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView (selection: $selectedTab) {
            HalloweenView()
                .onTapGesture {
                    self.selectedTab = 1
                }
                .tabItem {
                    Image(systemName: "cloud.moon.fill")
                    Text("Halloween")
                }
            FunCostumeView().tabItem {
                    Image(systemName: "theatermasks.fill")
                    Text("Constumes")
                }
            EnjoyWithFriendsView().tabItem {
                    Image(systemName: "wineglass.fill")
                    Text("Social")
                }
                .tag(1)
        }
    }
}
    
    struct ContentView_Preview: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
