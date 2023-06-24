//
//  UIKitView.swift
//  ios-wwdc2023
//
//  Created by Jerome Bach on 24/06/2023.
//

import SwiftUI

struct UIKitView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIKitViewController

    func makeUIViewController(context: Context) -> UIKitViewController {
        let sb = UIStoryboard(name: "Storyboard", bundle: nil)
        let viewController = sb.instantiateViewController(identifier: UIKitViewController.identifier) as! UIKitViewController
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIKitViewController, context: Context) {
        
    }
}
#Preview {
    UIKitView()
}
