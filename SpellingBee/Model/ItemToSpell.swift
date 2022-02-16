//
//  ItemToSpell.swift
//  SpellingBee
//
//  Created by Russell Gordon on 2022-02-16.
//

import Foundation

struct ItemToSpell: Identifiable {
    
    let id = UUID()
    let word: String
    let imageName: String
    
}

// Create the list of items that can be spelled
let itemsToSpell = [
    
    ItemToSpell(word: "watermelon",
                imageName: "watermelon"),
    
    ItemToSpell(word: "waffles",
                imageName: "waffles"),
    
    ItemToSpell(word: "turkey",
                imageName: "turkey"),
    
    ItemToSpell(word: "tomato",
                imageName: "tomato"),
    
    ItemToSpell(word: "strawberry",
                imageName: "strawberry"),
    
    ItemToSpell(word: "steak",
                imageName: "steak"),
    
    ItemToSpell(word: "soup",
                imageName: "soup"),
    
    ItemToSpell(word: "soda",
                imageName: "soda"),
    
    ItemToSpell(word: "sandwich",
                imageName: "sandwich"),
    
    ItemToSpell(word: "pumpkin",
                imageName: "pumpkin"),
    
    ItemToSpell(word: "potato",
                imageName: "potato"),
    
    ItemToSpell(word: "pizza",
                imageName: "pizza"),
    
    ItemToSpell(word: "pineapple",
                imageName: "pineapple"),
    
    ItemToSpell(word: "pear",
                imageName: "pear"),
    
    ItemToSpell(word: "peas",
                imageName: "peas"),
    
    ItemToSpell(word: "pancakes",
                imageName: "pancakes"),
    
    ItemToSpell(word: "orange",
                imageName: "orange"),
    
    ItemToSpell(word: "onion rings",
                imageName: "onion-rings"),
    
    ItemToSpell(word: "onion",
                imageName: "onion"),
    
    ItemToSpell(word: "mushroom",
                imageName: "mushroom"),
    
    ItemToSpell(word: "milkshake",
                imageName: "milkshake"),
    
    ItemToSpell(word: "lemon",
                imageName: "lemon"),
    
    ItemToSpell(word: "green pepper",
                imageName: "green-pepper"),
    
    ItemToSpell(word: "grapes",
                imageName: "grapes"),
    
    ItemToSpell(word: "eggplant",
                imageName: "eggplant"),
    
    ItemToSpell(word: "french fries",
                imageName: "french-fries"),
    
    ItemToSpell(word: "eggs",
                imageName: "eggs"),
    
    ItemToSpell(word: "cucumber",
                imageName: "cucumber"),
    
    ItemToSpell(word: "corn",
                imageName: "corn"),
    
    ItemToSpell(word: "cherry",
                imageName: "cherry"),
    
    ItemToSpell(word: "celery",
                imageName: "celery"),
    
    ItemToSpell(word: "carrot",
                imageName: "carrot"),
    
    ItemToSpell(word: "hamburger",
                imageName: "hamburger"),
    
    ItemToSpell(word: "banana",
                imageName: "banana"),
    
    ItemToSpell(word: "apple",
                imageName: "apple"),
    
]
