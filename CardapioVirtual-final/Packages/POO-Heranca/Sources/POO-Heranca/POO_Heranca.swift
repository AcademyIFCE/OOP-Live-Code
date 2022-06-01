// Novo requisito! Mudança no Projeto!
/** # Sessão de Chás. Cada chá com um efeito diferente e deve ser listado assim:
 🫖 Chás
 nº        Item            Preço        Efeito
 ----------------------------------------------------
 0         Melissa         12.9         Calmante
 1         Verde           12.9         Estimulante
 2         Preto           12.9         Estimulante
 3         Rooibos         13.9         Detox
 */

public class Menu {
    let title: String
    let sections: [Section]
    
    public init(title: String, sections: [Section]) {
        self.title = title
        self.sections = sections
    }
    
    public func show() -> String {
        var string = ""
        string += title+"\n\n"
        sections.forEach { section in 
            string += section.show()+"\n"
        }
        return string
    }
}


public class Section {
    let title: String
    let header: String
    let items: [Item]
    
    public init(title: String, header: String, items: [Item]) {
        self.title = title
        self.header = header
        self.items = items
    }
    
    init(title: String, items: [Item]) {
        self.title = title
        self.header = " nº\t\tItem\t\t\tPreço"
        self.items = items
    }
    
    func show() -> String {
        var string = ""
        string += title+"\n\n"
        string += header+"\n"
        string += "-----------------------------------------------\n"
        for item in items {
            string += description(for: item)+"\n"
            string += (ingredientsDescription(for: item) ?? "\n")+"\n"
        }
        return string
    }
    
    func description(for item: Item) -> String {
        return item.description
    }
    
    func ingredientsDescription(for item: Item) -> String? {
        return item.ingredientsDescription
    }
}

public class Item {
    let id: Int
    let name: String
    let price: Double
    let ingredients: [String]?
    
    public init(id: Int, name: String, price: Double, ingredients: [String]? = nil) {
        self.id = id
        self.name = name
        self.price = price
        self.ingredients = ingredients
    }
    
    var description: String {
        return  " \(self.id)\t\t\(self.name)\t\t$ \(self.price)"
    }
    
    var ingredientsDescription: String? {
        if let ingredients = self.ingredients {
            return "\t\t(\(ingredients.joined(separator: ", ")))\n"
        } 
        return nil
    }
    
}

public class Coffee: Item {
    let milliliters: Double
    
    public init(id: Int, name: String, milliliters: Double, price: Double, ingredients: [String]? = nil) {
        self.milliliters = milliliters
        super.init(id: id, name: name, price: price, ingredients: ingredients)
    }
    
    override var description: String {
        return " \(self.id)\t\t\(self.name)\t\t$ \(self.price)\t\t\(self.milliliters)ml"
    }
}

public class Tea: Item {
    
    public enum Effect: String {
        case relax = "Relaxante"
        case stimulant = "Estimulante"
        case detox = "Detox"
    }
    
    let effect: Effect
    
    public init(item: Item, effect: Effect) {
        self.effect = effect
        super.init(id: item.id, name: item.name, price: item.price, ingredients: item.ingredients)
    }
    
    override var description: String {
        return "\(self.id)\t\t\(self.name)\t\t$ \(self.price)\t\t\(self.effect.rawValue)"
    }
}
