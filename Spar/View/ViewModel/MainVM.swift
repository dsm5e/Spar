//
//  MainVM.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import Foundation

final class MainVM: ObservableObject {
    
    @Published var stories: [Story] = []
    @Published var banners: [Banner] = []
    @Published var smallBanners: [Banner] = []
    @Published var items: [Item] = []
    @Published var randomItems: [Item] = []
    
    
    init() {
        stories = [
            Story(image: "group", title: "Привелегии \"Мой спар\""),
            Story(image: "story1", title: "Мы в соцсетях"),
            Story(image: "story2", title: "3 рецепта коктейлей"),
            Story(image: "story3", title: "Дегустации в спар"),
            Story(image: "story4", title: "Новинки недели")
        ]
        
        banners = [
            Banner(image: "banner1"),
            Banner(image: "banner2"),
            Banner(image: "banner3")
        ]
        
        smallBanners = [
        Banner(image: "smallBanner1"),
        Banner(image: "smallBanner2"),
        Banner(image: "smallBanner3"),
        Banner(image: "smallBanner1"),
        Banner(image: "smallBanner2")
        ]
        
        items = [
            Item(image: "item1", price: 132.22, promotion: .hitPrice, priceDrop: false),
            Item(image: "item2", price: 23, promotion: .none, priceDrop: true),
            Item(image: "item3", price: 412, promotion: .superPrice, priceDrop: false),
            Item(image: "item1", price: 23.21, promotion: .none, priceDrop: true),
            Item(image: "item2", price: 132.22, promotion: .none, priceDrop: false),
            Item(image: "item3", price: 87.64, promotion: .none, priceDrop: false),
            Item(image: "item1", price: 132.22, promotion: .superPrice, priceDrop: true),
            Item(image: "item2", price: 17.23, promotion: .hitPrice, priceDrop: false)
        ]
        
        randomItems = items.shuffled()
    }
}
