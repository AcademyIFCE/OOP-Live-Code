import XCTest
@testable import POO_Heranca

final class POO_HerancaTests: XCTestCase {
    
    // MARK: - Tea
    /// Testando se o init da classe Tea está inicializando as propriedades do novo objeto Tea criado com exatamente os mesmos valores passados nos parametros
    func testTeaInit_validInputNoIngredients_NewItemTeaPropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Hibisco"
        let price = 12.5
        let effect = Tea.Effect.detox
        let item = Item(id: id, name: name, price: price)
        
        // when
        let tea = Tea(item: item, effect: effect)

        // then
        XCTAssertEqual(tea.id, id)
        XCTAssertEqual(tea.name, name)
        XCTAssertEqual(tea.effect, effect)
        XCTAssertEqual(tea.price, price)
        XCTAssertNil(tea.ingredients)
    }
    
    /// Testando se o init da classe Tea está inicializando as propriedades do novo objeto Tea criado com exatamente os mesmos valores passados nos parametros
    func testTeaInit_validInputWithIngredients_NewItemTeaPropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Earl Grey"
        let price = 12.5
        let effect = Tea.Effect.stimulant
        let ingredients = ["Oleo de Bergamota", "Chá Preto"]
        let item = Item(id: id, name: name, price: price, ingredients: ingredients)
        
        // when
        let tea = Tea(item: item, effect: effect)

        // then
        XCTAssertEqual(tea.id, id)
        XCTAssertEqual(tea.name, name)
        XCTAssertEqual(tea.effect, effect)
        XCTAssertEqual(tea.price, price)
        XCTAssertEqual(tea.ingredients, ingredients)
    }
    
    /// Testando se a variavel description de um Tea está gerando a string de suas propriedades de acordo com o header
    func testTeaDescription_numberItemPriceEffectValues() {
        // given
        let tea = Tea(
            item: Item(id: 0, name: "Earl Grey", price: 12.9), 
            effect: .stimulant
        )
        let expectedDescription = "0\t\tEarl Grey\t\t$ 12.9\t\tEstimulante"
        
        // when
        let description = tea.description
        
        // then
        XCTAssertEqual(description, expectedDescription)
    }
    
    // MARK: - Coffee
    /// Testando se o init da classe Coffee está inicializando as propriedades do novo objeto Coffee criado com exatamente os mesmos valores passados nos parametros
    func testCoffeeInit_validInputNoIngredients_NewItemCoffeePropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Expresso"
        let milliliters = 50.0
        let price = 5.0
        
        // when
        let coffee = Coffee(id: id, name: name, milliliters: milliliters, price: price)
        
        // then
        XCTAssertEqual(coffee.id, id)
        XCTAssertEqual(coffee.name, name)
        XCTAssertEqual(coffee.milliliters, milliliters)
        XCTAssertEqual(coffee.price, price)
        XCTAssertNil(coffee.ingredients)
    }
    
    /// Testando se o init da classe Coffee está inicializando as propriedades do novo objeto Coffee criado com exatamente os mesmos valores passados nos parametros
    func testCoffeeInit_validInputWithIngredients_NewItemCoffeePropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Expresso"
        let milliliters = 50.0
        let price = 5.0
        let ingredients = ["A", "B"]
        
        // when
        let coffee = Coffee(id: id, name: name, milliliters: milliliters, price: price, ingredients: ingredients)
        
        // then
        XCTAssertEqual(coffee.id, id)
        XCTAssertEqual(coffee.name, name)
        XCTAssertEqual(coffee.milliliters, milliliters)
        XCTAssertEqual(coffee.price, price)
        XCTAssertEqual(coffee.ingredients, ingredients)
    }
    
    /// Testando se a description de um Coffee descreve os valores de suas propriedades de acordo com o header
    func testCoffeeDescription_numberNamePriceMillilitersValues() {
        // given 
        let coffee = Coffee(id: 0, name: "Expresso", milliliters: 50.0, price: 5.0, ingredients: ["A", "B"])
        let expectedDescription = " 0\t\tExpresso\t\t$ 5.0\t\t50.0ml"
        
        // when
        let description = coffee.description
        
        // then
        XCTAssertEqual(description, expectedDescription)
    }
    
    
    // MARK: - Item
    /// Testando se o init da classe Item está inicializando as propriedades do novo objeto Coffee criado com exatamente os mesmos valores passados nos parametros
    func testItemInit_validInputNoIngredients_NewItemPropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Item"
        let price = 5.0
        
        // when
        let item = Item(id: id, name: name, price: price)
        
        // then
        XCTAssertEqual(item.id, id)
        XCTAssertEqual(item.name, name)
        XCTAssertEqual(item.price, price)
        XCTAssertNil(item.ingredients)
    }
    
    /// Testando se o init da classe Item está inicializando as propriedades do novo objeto Coffee criado com exatamente os mesmos valores passados nos parametros
    func testItemInit_validInputWithIngredients_NewItemPropertiesHasInputValues() {
        // given
        let id = 0
        let name = "Item"
        let price = 5.0
        let ingredients = ["A", "B"]
        
        // when
        let item = Item(id: id, name: name, price: price, ingredients: ingredients)
        
        // then
        XCTAssertEqual(item.id, id)
        XCTAssertEqual(item.name, name)
        XCTAssertEqual(item.price, price)
        XCTAssertEqual(item.ingredients, ingredients)
    }
    
    /// Testando se a description de um Item descreve os valores de suas propriedades de acordo com o header
    func testItemDescription_numberNamePriceValues() {
        // given 
        let item = Item(id: 0, name: "Item", price: 5.0)
        let expectedDescription = " 0\t\tItem\t\t$ 5.0"
        
        // when
        let description = item.description
        
        // then
        XCTAssertEqual(description, expectedDescription)
    }
    
    /// Testando se a ingredientsDescription de um Item descreve os valores da propriedade ingredients
    func testItemIngredientsDescription_itemWithIngredients_numberNamePriceValues() {
        // given 
        let item = Item(id: 0, name: "Item", price: 5.0, ingredients: ["A, B"])
        let expectedIngredientsDescription = "\t\t(A, B)\n"
        
        // when
        let description = item.ingredientsDescription
        
        // then
        XCTAssertEqual(description, expectedIngredientsDescription)
    }
    
    /// Testando se a ingredientsDescription de um Item é nil quando os ingredients são nil
    func testItemIngredientsDescription_itemWithoutIngredients_numberNamePriceValues() {
        // given 
        let item = Item(id: 0, name: "Item", price: 5.0)
        
        // when
        let description = item.ingredientsDescription
        
        // then
        XCTAssertNil(description)
    }
    
    
    // MARK: - Section
    func testSectionInit_validInputsWithHeader_NewSectionCreated() {
        // given 
        let title = "title"
        let header = "header"
        let items = [
            Item(id: 0, name: "A", price: 2.50),
            Item(id: 1, name: "B", price: 3.50)
        ]
        
        // when
        let section = Section(title: title, header: header, items: items)
        
        // then
        XCTAssertEqual(section.title, title)
        XCTAssertEqual(section.header, header)
        XCTAssertEqual(section.items.count, items.count)
        for i in 0..<section.items.count {
            XCTAssertEqual(section.items[i].id, items[i].id)
            XCTAssertEqual(section.items[i].name, items[i].name)
        }
    }
    
    func testSectionInit_validInputsWithoutHeader_NewSectionCreated() {
        // given 
        let title = "title"
        let items = [
            Item(id: 0, name: "A", price: 2.50),
            Item(id: 1, name: "B", price: 3.50)
        ]
        let expectedHeader = " nº\t\tItem\t\t\tPreço"
        
        // when
        let section = Section(title: title, items: items)
        
        // then
        XCTAssertEqual(section.title, title)
        XCTAssertEqual(section.header, expectedHeader)
        XCTAssertEqual(section.items.count, items.count)
        for i in 0..<section.items.count {
            XCTAssertEqual(section.items[i].id, items[i].id)
            XCTAssertEqual(section.items[i].name, items[i].name)
        }
    }
    
    func testSectionShow_menuStringWithItems() {
        
    }
    
    func testSectionHeader_defaultHeader() {
        // given 
        let title = "title"
        let items = [
            Item(id: 0, name: "A", price: 2.50),
            Item(id: 1, name: "B", price: 3.50)
        ]
        let section = Section(title: title, items: items)
        let expectedHeader = " nº\t\tItem\t\t\tPreço"
        
        // when 
        let header = section.header
        
        // then 
        XCTAssertEqual(header, expectedHeader)
    }
    
    func testSectionDescription_validItem_numberItemPriceValuesMatchesProperties() {
        // given 
        let title = "title"
        let items = [
            Item(id: 0, name: "A", price: 2.50)
        ]
        let section = Section(title: title, items: items)
        let expectedDescription = " 0\t\tA\t\t$ 2.5"
        
        // when 
        let description = section.description(for: section.items.first!)
        
        // then 
        XCTAssertEqual(description, expectedDescription)
    }
    
    func testSectionIngredientsDescription_validItemWithIngredients_matchesIngredientsDescription() {
        // given 
        let title = "title"
        let items = [
            Item(id: 0, name: "A", price: 2.50, ingredients: ["a","A"])
        ]
        let section = Section(title: title, items: items)
        let expectedDescription = "\t\t(a, A)\n"
        
        // when 
        let description = section.ingredientsDescription(for: section.items.first!)
        
        // then 
        XCTAssertEqual(description, expectedDescription)
    }
    
    func testSectionIngredientsDescription_validItemNoIngredients_matchesIngredientsDescription() {
        // given 
        let title = "title"
        let items = [
            Item(id: 0, name: "A", price: 2.50)
        ]
        let section = Section(title: title, items: items)
        
        // when 
        let description = section.ingredientsDescription(for: section.items.first!)
        
        // then 
        XCTAssertNil(description)
    }
    
    func testSectionShow_sectionOfTheMenu() {
        // given 
        let title = "title"
        let items = [
            Item(id: 0, name: "A", price: 2.50),
            Item(id: 0, name: "A", price: 2.50, ingredients: ["a, A"])
        ]
        let section = Section(title: title, items: items)
        let expectedString = "title\n\n nº\t\tItem\t\t\tPreço\n-----------------------------------------------\n 0\t\tA\t\t$ 2.5\n\n\n 0\t\tA\t\t$ 2.5\n\t\t(a, A)\n\n"
        
        // when
        let string = section.show()
        
        // then 
        XCTAssertEqual(string, expectedString)
    }
    
    // MARK: - Menu
    func testMenuInit_titleSections_menuCreation() {
        // given
        let title = "title"
        let aSection = Section(
            title: "a", 
            items: [
                Item(id: 0, name: "a", price: 1.5),
            ]
        )
        let bSection = Section(
            title: "b", 
            items: [
                Item(id: 0, name: "b", price: 2.5),
            ]
        )
        
        // when
        let menu = Menu(title: title, sections: [aSection, bSection])
        
        // then
        XCTAssertEqual(menu.title, title)
        
        XCTAssertEqual(menu.sections[0].title, aSection.title)
        XCTAssertEqual(menu.sections[0].header, aSection.header)
        XCTAssertEqual(menu.sections[0].items.count, aSection.items.count)
        XCTAssertEqual(menu.sections[0].items[0].id, aSection.items[0].id)
        XCTAssertEqual(menu.sections[0].items[0].name, aSection.items[0].name)
        XCTAssertEqual(menu.sections[0].items[0].price, aSection.items[0].price)
        
        XCTAssertEqual(menu.sections[1].title, bSection.title)
        XCTAssertEqual(menu.sections[1].header, bSection.header)
        XCTAssertEqual(menu.sections[1].items.count, bSection.items.count)
        XCTAssertEqual(menu.sections[1].items[0].id, bSection.items[0].id)
        XCTAssertEqual(menu.sections[1].items[0].name, bSection.items[0].name)
        XCTAssertEqual(menu.sections[1].items[0].price, bSection.items[0].price)
    }
    
    func testMenuShow() {
        // given
        let title = "title"
        let aSection = Section(
            title: "Section A", 
            items: [
                Item(id: 0, name: "a", price: 1.5),
            ]
        )
        let bSection = Section(
            title: "Section B", 
            items: [
                Item(id: 0, name: "b", price: 2.5),
            ]
        )
        let menu = Menu(title: title, sections: [aSection, bSection])
        let expectedString = "title\n\nSection A\n\n nº\t\tItem\t\t\tPreço\n-----------------------------------------------\n 0\t\ta\t\t$ 1.5\n\n\n\nSection B\n\n nº\t\tItem\t\t\tPreço\n-----------------------------------------------\n 0\t\tb\t\t$ 2.5\n\n\n\n"
        
        // when
        let string = menu.show()
        
        // then
        XCTAssertEqual(string, expectedString)
    }
}
