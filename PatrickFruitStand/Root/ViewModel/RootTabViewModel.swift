//
//  RootTabViewModel.swift
//  PatrickFruitStand
//
//  Created by Patrick Moscova on 12/9/25.
//

import Foundation
internal import Combine

final class RootTabViewModel : ObservableObject {

    enum Tab: Hashable {
        case home
        case boxes
        case cart
        case account
    }
    
    @Published var selectedTab: Tab  = .home
}
