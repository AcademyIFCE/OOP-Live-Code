import XCTest
@testable import POO_Encapsulamento

final class POO_EncapsulamentoTests: XCTestCase {
    
    /// Testando se o init da classe Coffee está inicializando as propriedades do novo objeto Coffee criado com exatamente os mesmos valores passados nos parametros
    func testCoffeeInit_validInputNoIgredients_NewCoffeePropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Expresso"
        let milliliters = 50
        let price = 5.0
        
        // when
        let coffee = Coffee(id: id, name: name, milliliters: milliliters, price: price)
        
        //then
        XCTAssertEqual(coffee.id, id)
        XCTAssertEqual(coffee.name, name)
        XCTAssertEqual(coffee.milliliters, milliliters)
        XCTAssertEqual(coffee.price, price)
        XCTAssertNil(coffee.ingredients)
    }
    
    /// Testando se o init da classe Coffee está inicializando as propriedades do novo objeto Coffee criado com exatamente os mesmos valores passados nos parametros
    func testCoffeeInit_validInputWithIngredients_NewCoffeePropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Expresso"
        let milliliters = 50
        let price = 5.0
        let ingredients = ["A", "B"]
        
        // when
        let coffee = Coffee(id: id, name: name, milliliters: milliliters, price: price, ingredients: ingredients)
        
        //then
        XCTAssertEqual(coffee.id, id)
        XCTAssertEqual(coffee.name, name)
        XCTAssertEqual(coffee.milliliters, milliliters)
        XCTAssertEqual(coffee.price, price)
        XCTAssertEqual(coffee.ingredients, ingredients)
    }
    
    /// Testando se o init da classe Menu está inicializando as propriedades do novo objeto Menu criado com exatamente os mesmos valores passados nos parametros
    func testMenuInit_validInputWithCoffees_NewMenuPropertiesHasInputValues() {
        // given 
        let title = "Cardápio de Teste"
        let section = "Sessão de Teste"
        let header = "Header de Teste"
        let coffees = [
            Coffee(id: 0, name: "Expresso", milliliters: 50, price: 5.0)
        ]
        
        // when
        let menu = Menu(title: title, section: section, header: header, coffees: coffees)
        
        // then
        XCTAssertEqual(menu.title, title)
        XCTAssertEqual(menu.section, section)
        XCTAssertEqual(menu.header, header)
        XCTAssertEqual(menu.coffees.first!.id, coffees.first!.id)
    }
    
    /// Testando se a função description da classe Menu está gerando a string corretamente para o café passado por parametro
    func testMenuDescription_ValidCoffee_StringRepresentingACoffeeAtTheMenu() {
        // given
        let coffee = Coffee(id: 0, name: "Expresso", milliliters: 50, price: 5.0)
        let title = "Cardápio de Teste"
        let section = "Sessão de Teste"
        let header = "Header de Teste"
        let coffees = [coffee]
        let menu = Menu(title: title, section: section, header: header, coffees: coffees)
        
        let expectedDescription = " 0\t\tExpresso\t\t$ 5.0\t\t50ml"
        
        // when
        let description = menu.description(for: coffee)
        
        // then
        XCTAssertEqual(description, expectedDescription)
    }
    
    /// Testando se a função description da classe Menu está gerando a string corretamente para o café com ingredientes passado por parametro
    func testMenuIngredientsDescription_ValidCoffeeWithIngredients_StringRepresentingCoffeeIngredientsAtTheMenu() {
        // given
        let coffee = Coffee(id: 0, name: "Expresso", milliliters: 50, price: 5.0, ingredients: ["A","B"])
        let menu = Menu(title: "Cardápio de Teste", section: "Sessão de Teste", header: "Header de Teste", coffees: [coffee])
        
        let expectedIngredientsDescription = "\t\t(A, B)\n"
        
        // when
        let ingredients = menu.ingredientsDescription(for: coffee)
        
        // then
        XCTAssertEqual(ingredients, expectedIngredientsDescription)
    }
    
    /// Testando se a função description da classe Menu está gerando a string corretamente para o café sem ingredientes passado por parametro
    func testMenuIngredientsDescription_ValidCoffeeWithoutIngredients_StringRepresentingCoffeeIngredientsAtTheMenu() {
        // given
        let coffee = Coffee(id: 0, name: "Expresso", milliliters: 50, price: 5.0)
        let menu = Menu(title: "Cardápio de Teste", section: "Sessão de Teste", header: "Header de Teste", coffees: [coffee])
        
        // when
        let ingredients = menu.ingredientsDescription(for: coffee)
        
        // then
        XCTAssertNil(ingredients)
    }

    /// Testando se a função show da classe Menu está gerando a String adequadamente de acordo com os valores das propriedades do objeto Menu que invocou ela.
    func testMenuShow_ValidMenuWithCoffees_MenuStringWithCoffees() {
        // given
        let coffee = Coffee(
            id: 0, 
            name: "Expresso", 
            milliliters: 50, 
            price: 5.0
        )
        let coffeeWithIngredients = Coffee(
            id: 1, 
            name: "CoffeeAB", 
            milliliters: 50, 
            price: 5.0,
            ingredients: ["A", "B"]
        )
        let menu = Menu(
            title: "Cardápio de Teste", 
            section: "Sessão de Teste", 
            header: "Header de Teste", 
            coffees: [coffee, coffeeWithIngredients]
        )
        let expectedMenuString = "Cardápio de Teste\nSessão de Teste\nHeader de Teste\n-----------------------------------------------\n 0\t\tExpresso\t\t$ 5.0\t\t50ml\n\n\n 1\t\tCoffeeAB\t\t$ 5.0\t\t50ml\n\t\t(A, B)\n\n"
        // when
        let menuString = menu.show()
        
        // then
        XCTAssertEqual(menuString, expectedMenuString)
    }

}
