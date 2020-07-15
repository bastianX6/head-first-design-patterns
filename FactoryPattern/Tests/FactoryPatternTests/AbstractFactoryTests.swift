//
//  AbstractFactoryTests.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

@testable import FactoryPattern
import XCTest

final class AbstractFactoryTests: XCTestCase {
    func testChicagoOtherPizza() {
        let store: PizzaWithIngredientsStore = ChicagoPizzaIngredientsStore()

        let otherPizza = store.createPizza(ofType: "other")
        XCTAssertNil(otherPizza, "ChicagoPizzaIngredientsStore can't create pizzas of \"other\" style")
    }

    func testChicagoCheesePizza() {
        let store: PizzaWithIngredientsStore = ChicagoPizzaIngredientsStore()

        let pizza = store.createPizza(ofType: ChicagoPizzaType.cheese.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssertFalse(pizza.isReady, "Pizza should be prepared using orderPizza method")
        }

        let preparedPizza = store.orderPizza(ofType: ChicagoPizzaType.cheese.rawValue)
        XCTAssertNotNil(preparedPizza)
        XCTAssertNotNil(preparedPizza?.dough)
        XCTAssertNotNil(preparedPizza?.sauce)
        XCTAssertNotNil(preparedPizza?.cheese)
        XCTAssertNil(preparedPizza?.pepperoni)
        XCTAssertNil(preparedPizza?.clam)
        XCTAssertEqual(preparedPizza?.veggies.count, 0)

        if let preparedPizza = preparedPizza,
            let dough = preparedPizza.dough,
            let sauce = preparedPizza.sauce,
            let cheese = preparedPizza.cheese {
            XCTAssert(preparedPizza.isReady, "Pizza should be prepared")
            XCTAssert(type(of: preparedPizza) == CheesePizza.self)
            XCTAssert(type(of: dough) == ThickCrustDough.self)
            XCTAssert(type(of: sauce) == PlumTomatoSauce.self)
            XCTAssert(type(of: cheese) == MozzarellaCheese.self)
        }
    }

    func testChicagoClamPizza() {
        let store: PizzaWithIngredientsStore = ChicagoPizzaIngredientsStore()

        let pizza = store.createPizza(ofType: ChicagoPizzaType.clam.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssertFalse(pizza.isReady, "Pizza should be prepared using orderPizza method")
        }

        let preparedPizza = store.orderPizza(ofType: ChicagoPizzaType.clam.rawValue)
        XCTAssertNotNil(preparedPizza)
        XCTAssertNotNil(preparedPizza?.dough)
        XCTAssertNotNil(preparedPizza?.sauce)
        XCTAssertNotNil(preparedPizza?.cheese)
        XCTAssertNotNil(preparedPizza?.clam)
        XCTAssertNil(preparedPizza?.pepperoni)
        XCTAssertEqual(preparedPizza?.veggies.count, 0)

        if let preparedPizza = preparedPizza,
            let dough = preparedPizza.dough,
            let sauce = preparedPizza.sauce,
            let cheese = preparedPizza.cheese,
            let clam = preparedPizza.clam {
            XCTAssert(preparedPizza.isReady, "Pizza should be prepared")
            XCTAssert(type(of: preparedPizza) == ClamPizza.self)
            XCTAssert(type(of: dough) == ThickCrustDough.self)
            XCTAssert(type(of: sauce) == PlumTomatoSauce.self)
            XCTAssert(type(of: cheese) == MozzarellaCheese.self)
            XCTAssert(type(of: clam) == FrozenClam.self)
        }
    }

    func testNYOtherPizza() {
        let store: PizzaWithIngredientsStore = NYPizzaIngredientsStore()

        let otherPizza = store.createPizza(ofType: "other")
        XCTAssertNil(otherPizza, "NYPizzaIngredientsStore can't create pizzas of \"other\" style")
    }

    func testNYCheesePizza() {
        let store: PizzaWithIngredientsStore = NYPizzaIngredientsStore()

        let pizza = store.createPizza(ofType: NYPizzaType.cheese.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssertFalse(pizza.isReady, "Pizza should be prepared using orderPizza method")
        }

        let preparedPizza = store.orderPizza(ofType: NYPizzaType.cheese.rawValue)
        XCTAssertNotNil(preparedPizza)
        XCTAssertNotNil(preparedPizza?.dough)
        XCTAssertNotNil(preparedPizza?.sauce)
        XCTAssertNotNil(preparedPizza?.cheese)
        XCTAssertNil(preparedPizza?.pepperoni)
        XCTAssertNil(preparedPizza?.clam)
        XCTAssertEqual(preparedPizza?.veggies.count, 0)

        if let preparedPizza = preparedPizza,
            let dough = preparedPizza.dough,
            let sauce = preparedPizza.sauce,
            let cheese = preparedPizza.cheese {
            XCTAssert(preparedPizza.isReady, "Pizza should be prepared")
            XCTAssert(type(of: preparedPizza) == CheesePizza.self)
            XCTAssert(type(of: dough) == ThinCrustDough.self)
            XCTAssert(type(of: sauce) == MarinaraSauce.self)
            XCTAssert(type(of: cheese) == RegianoCheese.self)
        }
    }

    func testNYClamPizza() {
        let store: PizzaWithIngredientsStore = NYPizzaIngredientsStore()

        let pizza = store.createPizza(ofType: NYPizzaType.clam.rawValue)
        XCTAssertNotNil(pizza)
        if let pizza = pizza {
            XCTAssertFalse(pizza.isReady, "Pizza should be prepared using orderPizza method")
        }

        let preparedPizza = store.orderPizza(ofType: NYPizzaType.clam.rawValue)
        XCTAssertNotNil(preparedPizza)
        XCTAssertNotNil(preparedPizza?.dough)
        XCTAssertNotNil(preparedPizza?.sauce)
        XCTAssertNotNil(preparedPizza?.cheese)
        XCTAssertNotNil(preparedPizza?.clam)
        XCTAssertNil(preparedPizza?.pepperoni)
        XCTAssertEqual(preparedPizza?.veggies.count, 0)

        if let preparedPizza = preparedPizza,
            let dough = preparedPizza.dough,
            let sauce = preparedPizza.sauce,
            let cheese = preparedPizza.cheese,
            let clam = preparedPizza.clam {
            XCTAssert(preparedPizza.isReady, "Pizza should be prepared")
            XCTAssert(type(of: preparedPizza) == ClamPizza.self)
            XCTAssert(type(of: dough) == ThinCrustDough.self)
            XCTAssert(type(of: sauce) == MarinaraSauce.self)
            XCTAssert(type(of: cheese) == RegianoCheese.self)
            XCTAssert(type(of: clam) == FreshClams.self)
        }
    }

    static var allTests = [
        ("testChicagoOtherPizza", testChicagoOtherPizza),
        ("testChicagoCheesePizza", testChicagoCheesePizza),
        ("testChicagoClamPizza", testChicagoClamPizza),
        ("testNYOtherPizza", testNYOtherPizza),
        ("testNYCheesePizza", testNYCheesePizza),
        ("testNYClamPizza", testNYClamPizza),
    ]
}
