import XCTest
@testable import POO_Abstracao

/**
 Testes do Package POO_Abstracao
 - Convencao de Nome para funcões de Teste (Naming Convention)
 ```
  func testNomeDaFuncao_DadosDeOrigem_ResultadoEsperado()
  func testNomeDaFuncao_GivenInput_ExpectedResult()
 ```
 */
final class POO_AbstracaoTests: XCTestCase {
    
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
        let title = "Cardapio de Teste"
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
    
    /// Testando se a função show da classe Menu printa os valores corretamente
    func testMenuShow_menuWithCoffees_PrintsTitleSectionHeaderAndCoffees() {
      // ???
    }
    
}
