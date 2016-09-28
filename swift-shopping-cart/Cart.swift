//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items = [Item]()

    func totalPriceInCents() -> Int {
        var totalCost = Int()
        for item in items{
            let itemCost = item.priceInCents
            totalCost += itemCost
        }
        return totalCost
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        for (index,value) in items.enumerated() {
            if item == value {
                items.remove(at: index)
            }
        }
    }
    
    func items(withName name: String) -> [Item] {
        var final = [Item]()

        for item in items {
            if name == item.name {
                final.append(item)
            }
        }
        
        return final
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var final = [Item]()
        for item in items {
            if price <= item.priceInCents {
                final.append(item)
            }
        }
        return final
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var final = [Item]()
        for item in items {
            if price >= item.priceInCents {
                final.append(item)
            }
        }
        return final
    }
}




