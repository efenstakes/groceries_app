//
//  food.swift
//  grocery_shop_amarullahs
//
//  Created by MAC on 11/5/21.
//

import Foundation



struct Food: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    var weight: Double
    var price: Double
}


let foods: Array<Food> = [
    
    Food(
        name: "Mango",
        image: "mango",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Strawberry",
        image: "strawberry",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Banana",
        image: "banana",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Avocado",
        image: "avocado",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Blueberry",
        image: "blueberry2",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Chico",
        image: "chico",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Kiwi",
        image: "kiwi",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Durian",
        image: "durian",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Jujube",
        image: "jujube",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Orange",
        image: "orange",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Pawpaw",
        image: "pawpaw",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Pomegranate",
        image: "pomegranate2",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Tomato",
        image: "tomato",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Water Melon",
        image: "watermelon",
        weight: 8.5,
        price: 30
    ),
    
    Food(
        name: "Raspberry",
        image: "raspberry2",
        weight: 8.5,
        price: 30
    ),

]
