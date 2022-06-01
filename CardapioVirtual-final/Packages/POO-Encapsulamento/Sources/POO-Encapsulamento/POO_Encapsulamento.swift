public class Coffee {
    let id: Int
    let name: String
    let milliliters: Int
    let price: Double
    let ingredients: [String]?
    
    public init(id: Int, name: String, milliliters: Int, price: Double, ingredients: [String]? = nil) {
        self.id = id
        self.name = name
        self.milliliters = milliliters
        self.price = price
        self.ingredients = ingredients
    }
}

// Usando Encapsulamento
public class Menu {
    let title: String
    let section: String
    let header: String
    let coffees: [Coffee]
    
    public init(title: String, section: String, header: String, coffees: [Coffee]) {
        self.title = title
        self.section = section
        self.header = header
        self.coffees = coffees
    }
    
    public func show() -> String {
        var menuString = ""
        menuString += title+"\n"
        menuString += section+"\n"
        menuString += header+"\n"
        menuString += "-----------------------------------------------\n"
        for coffee in coffees {
            menuString += description(for: coffee)+"\n"
            menuString += (ingredientsDescription(for: coffee) ?? "\n")+"\n"
        }
        return menuString
    }
    
    func description(for coffee: Coffee) -> String {
        return " \(coffee.id)\t\t\(coffee.name)\t\t$ \(coffee.price)\t\t\(coffee.milliliters)ml"
    }
    
    func ingredientsDescription(for coffee: Coffee) -> String? {
        if let ingredients = coffee.ingredients {
            return "\t\t(\(ingredients.joined(separator: ", ")))\n"
        }
        return nil
    }
}
