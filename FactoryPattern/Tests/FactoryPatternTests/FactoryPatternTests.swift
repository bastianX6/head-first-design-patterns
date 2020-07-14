@testable import FactoryPattern
import XCTest

final class FactoryPatternTests: XCTestCase {
    func testFactory() {
        let factory: PizzaFactory = SimplePizzaFactory()

        let otherPizza = factory.createPizza(ofType: "other")
        XCTAssertNil(otherPizza, "SimplePizzaFactory can't create pizzas of \"other\" style")

        let pizza = factory.createPizza(ofType: SimplePizzaType.cheese.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssert(type(of: pizza) == SimpleCheesePizza.self)
        }
    }

    func testChicagoStore() {
        let store: PizzaStore = ChicagoPizzaStore()

        let otherPizza = store.createPizza(ofType: "other")
        XCTAssertNil(otherPizza, "ChicagoPizzaStore can't create pizzas of \"other\" style")

        let pizza = store.createPizza(ofType: ChicagoPizzaType.cheese.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssertFalse(pizza.isReady, "Pizza should be prepared using orderPizza method")
        }

        let preparedPizza = store.orderPizza(ofType: ChicagoPizzaType.cheese.rawValue)
        XCTAssertNotNil(preparedPizza)
        if let preparedPizza = preparedPizza {
            XCTAssert(preparedPizza.isReady, "Pizza should be prepared")
            XCTAssert(type(of: preparedPizza) == ChicagoStyleCheesePizza.self)
        }
    }

    func testNYStore() {
        let store: PizzaStore = NYPizzaStore()

        let otherPizza = store.createPizza(ofType: "other")
        XCTAssertNil(otherPizza, "NYPizzaStore can't create pizzas of \"other\" style")

        let pizza = store.createPizza(ofType: NYPizzaType.cheese.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssertFalse(pizza.isReady, "Pizza should be prepared using orderPizza method")
        }

        let preparedPizza = store.orderPizza(ofType: NYPizzaType.cheese.rawValue)
        XCTAssertNotNil(preparedPizza)
        if let preparedPizza = preparedPizza {
            XCTAssert(preparedPizza.isReady, "Pizza should be prepared")
            XCTAssert(type(of: preparedPizza) == NYStyleCheesePizza.self)
        }
    }

    static var allTests = [
        ("testFactory", testFactory),
        ("testChicagoStore", testChicagoStore),
        ("testNYStore", testNYStore),
    ]
}
