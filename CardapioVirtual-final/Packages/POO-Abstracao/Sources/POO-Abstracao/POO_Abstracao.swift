// Usando Abstração

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
    
    public func show() {
        print(title)
        print(section)
        print(header)
        print("-----------------------------------------------")
        for coffee in coffees {
            print(" \(coffee.id)\t\t\(coffee.name)\t\t$ \(coffee.price)\t\t\(coffee.milliliters)ml")
            if let ingredients = coffee.ingredients {
                print("\t\t(\(ingredients.joined(separator: ", ")))\n")
            } else {
                print("\n")
            }
        }
    }
}
