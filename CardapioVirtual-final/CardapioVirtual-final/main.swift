//
//  main.swift
//  CardapioVirtual
//
//  Created by Gabriela Bezerra on 25/05/22.
//

import Foundation

// MARK: - Sem POO
import SemPOO
cardapioSemPOO()


// MARK: - Abstração
//import POO_Abstracao
//let coffees: [Coffee] = [
//    Coffee(
//        id: 0,
//        name: "Expresso", 
//        milliliters: 50, 
//        price: 6.9
//    ),
//    Coffee(
//        id: 1,
//        name: "Filtrado", 
//        milliliters: 200, 
//        price: 9.9
//    ),
//    Coffee(
//        id: 2,
//        name: "Macchiato", 
//        milliliters: 120, 
//        price: 14.90, 
//        ingredients: ["Café Expresso", "Leite Vaporizado", "Espuma"]
//    ),
//    Coffee(
//        id: 3,
//        name: "Capuccino", 
//        milliliters: 175, 
//        price: 16.90, 
//        ingredients: ["Café Filtrado", "Leite Vaporizado", "Canela", "Açucar", "Chocolate"]
//    )
//]
//
//let menu = Menu(
//    title: "✨ Cardápio Virtual 👨‍🍳✨\n",
//    section: " ☕️ Cafés\n",
//    header: " nº\t\tItem\t\t\tPreço\t\tQuantidade", 
//    coffees: coffees
//)
//
//print(menu.show())



// MARK: - Encapsulamento
//import POO_Encapsulamento
//let coffees: [Coffee] = [
//    Coffee(
//        id: 0,
//        name: "Expresso", 
//        milliliters: 50, 
//        price: 6.9
//    ),
//    Coffee(
//        id: 1,
//        name: "Filtrado", 
//        milliliters: 200, 
//        price: 9.9
//    ),
//    Coffee(
//        id: 2,
//        name: "Macchiato", 
//        milliliters: 120, 
//        price: 14.90, 
//        ingredients: ["Café Expresso", "Leite Vaporizado", "Espuma"]
//    ),
//    Coffee(
//        id: 3,
//        name: "Capuccino", 
//        milliliters: 175, 
//        price: 16.90, 
//        ingredients: ["Café Filtrado", "Leite Vaporizado", "Canela", "Açucar", "Chocolate"]
//    )
//]
//
//let menu = Menu(
//    title: "✨ Cardápio Virtual 👨‍🍳✨\n",
//    section: " ☕️ Cafés\n",
//    header: " nº\t\tItem\t\t\tPreço\t\tQuantidade", 
//    coffees: coffees
//)
//
//print(menu.show())



// MARK: - Herança e Polimorfismo
//import POO_Heranca
//let coffeeSection = Section(
//    title: "☕️ Cafés", header: " nº\t\tChá\t\t\t\tPreço\t\tQuantidade", items: [
//        Coffee(
//            id: 0,
//            name: "Expresso", 
//            milliliters: 50, 
//            price: 6.9
//        ),
//        Coffee(
//            id: 1,
//            name: "Filtrado", 
//            milliliters: 200, 
//            price: 9.9
//        ),
//        Coffee(
//            id: 2,
//            name: "Macchiato", 
//            milliliters: 120, 
//            price: 14.90, 
//            ingredients: ["Café Expresso", "Leite Vaporizado", "Espuma"]
//        ),
//        Coffee(
//            id: 3,
//            name: "Capuccino", 
//            milliliters: 175, 
//            price: 16.90, 
//            ingredients: ["Café Filtrado", "Leite Vaporizado", "Canela", "Açucar", "Chocolate"]
//        )
//    ]
//)
//
//let teaSection = Section(
//    title: "🫖 Chás", header: " nº\t\tChá\t\t\tPreço\t\tEfeito", items: [
//        Tea(
//            item: Item(id: 0, name: "Melissa", price: 12.9), 
//            effect: .relax
//        ),
//        Tea(
//            item: Item(id: 1, name: "Verde", price: 12.9), 
//            effect: .stimulant
//        ),
//        Tea(
//            item: Item(id: 2, name: "Preto", price: 12.9), 
//            effect: .stimulant
//        ),
//        Tea(
//            item: Item(id: 3, name: "Rooibos", price: 13.9), 
//            effect: .detox
//        ),
//    ]
//)
//
//let menu = Menu(
//    title: "✨ Cardápio Virtual 👨‍🍳✨", 
//    sections: [
//        coffeeSection,
//        teaSection
//    ]
//)
//
//print(menu.show())
