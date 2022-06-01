// Versão sem POO
public func cardapioSemPOO() {
    
    let coffeeOptions: [String] = ["Expresso", "Filtrado", "Macchiato", "Cappucino"]
    let milliliters: [Int] = [50, 200, 120, 175]
    let prices: [Double] = [6.90, 9.90, 14.90, 16.90]
    
    let ingredientsMacchiato: [String] = ["Café Expresso", "Leite Vaporizado", "Espuma"]
    let ingredientsCappucino: [String] = ["Café Filtrado", "Leite Vaporizado", "Canela", "Açucar", "Chocolate"]
    
    print("✨ Cardápio Virtual 👨‍🍳✨\n")
    print(" ☕️ Cafés\n")
    print(" nº\t\tItem\t\t\tPreço\t\tQuantidade")
    print("-----------------------------------------------")
    
    for i in 0...3 {
        
        print(" \(i)\t\t\(coffeeOptions[i])\t\t$ \(prices[i])\t\t\(milliliters[i])ml")
        
        switch coffeeOptions[i] {
            case "Macchiato":
                print("\t\t(\(ingredientsMacchiato.joined(separator: ", ")))\n")
            case "Cappucino":
                print("\t\t(\(ingredientsCappucino.joined(separator: ", ")))\n")
            default:
                print("\n")
                break
        }
    }
    
}
