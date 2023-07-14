//
//  ContentView.swift
//  LoginPageUmai_SwiftUI_MVVM
//
//  Created by Muhammad Usman on 07/07/2023.
//

import SwiftUI

struct MainView: View {
        
    @ObservedObject var mainVM = MainViewViewModel()
    var body: some View {
       
           LoginPageView()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
