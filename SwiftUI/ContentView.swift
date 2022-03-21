//
//  ContentView.swift
//  SwiftUI
//
//  Created by Misha on 16.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        TabView {
        
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.init(red: 240.0/255, green: 240.0/255, blue: 240.0/255))
                    .frame(width: 300, height: 100)
                
                VStack {
                    TextField(
                        "Email or phone",
                        text: $username
                    ).padding()
                    .frame(width: 300, height: 30)
                    .disableAutocorrection(true)
                    
                    Color.gray.frame(width: 300, height:CGFloat(1))
                    
                    TextField(
                        "Password",
                        text: $password
                    ).padding()
                    .frame(width: 300, height: 30)
                    .disableAutocorrection(true)
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 300, height: 100)
            }.padding()
            
            Button("Log In") {
                print($username)
            }
            .frame(width: 300, height: 50)
            .background(Color.init(red: 81/255, green: 129/255, blue: 184/255))
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .tabItem {
            Image(systemName: "house")
            Text("Feed")
        }
        
        Text("Person")
        .tabItem {
            Image(systemName: "person.crop.circle")
            Text("Feed")
        }
            
        Text("Music")
        .tabItem {
            Image(systemName: "music.note")
            Text("Music")
        }
            
        Text("Video")
        .tabItem {
            Image(systemName: "video.fill")
            Text("Video")
        }
            
        Text("Record")
        .tabItem {
            Image(systemName: "record.circle")
            Text("Record")
        }
    }
    }
}
    //MARK: -Задачи 1 и 2
//    @State private var state: Bool = true
//    @State private var speed = 50.0
//    @State private var isEditing = false
//
//    var body: some View {
//        VStack {
//            Text("Заголовок")
//                .headingCaption()
//            HStack {
//            Toggle("Enabled", isOn: $state)
//                .regularCaption()
//            }
//            Slider(
//                value: $speed,
//                in: 0...100) { editing in
//                    print("editing: ", editing)
//                    isEditing = editing
//            }
//            Text("\(speed)")
//                .foregroundColor(isEditing ? .red : .blue)
//                .borderedCaption()
//        }
//    }
//}
//
//struct BorderedCaption: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.caption2)
//            .padding(10)
//            .overlay(
//                RoundedRectangle(cornerRadius: 15)
//                    .stroke(lineWidth: 1)
//            )
//            .foregroundColor(Color.blue)
//    }
//}
//
//struct HeadingCaption: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .padding(15)
//    }
//}
//
//struct RegularCaption: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.title)
//            .padding(10)
//            .foregroundColor(Color.green)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//extension View {
//    func borderedCaption() -> some View {
//        modifier(BorderedCaption())
//    }
//    func headingCaption() -> some View {
//        modifier(HeadingCaption())
//    }
//    func regularCaption() -> some View {
//        modifier(RegularCaption())
//    }
//}
