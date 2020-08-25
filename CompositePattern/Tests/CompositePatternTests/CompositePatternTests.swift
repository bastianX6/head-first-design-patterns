@testable import CompositePattern
import XCTest

final class CompositePatternTests: XCTestCase {
    private let output =
        """
        ALL MENUS, All menus combined
        ----------
        PANCAKE HOUSE MENU, Breakfast
        ----------
        K&B's Pancake Breakfast(v), 2.99
        -- Pancakes with scrambled eggs, and toast
        Regular Pancake Breakfast, 2.99
        -- Pancake with fried eggs, sausage
        Blueberry Pancakes(v), 3.49
        -- Pancakes made with fresh blueberries
        Wafles(v), 3.59
        -- Wafles, with your choise of blueberries or strawberries
        DINER MENU, Lunch
        ----------
        Vegetarian BLT(v), 2.99
        -- (Fakin´) Bacon with lettuce & tomato on whole wheat
        BLT, 2.99
        -- Bacon with lettuce & tomato on whole wheat
        Soup of the day(v), 3.29
        -- Soup of the day, with a side of potato salad
        Hotdog, 3.05
        -- A hot dog, with saurkraut, relish, onions, topped with cheese
        Pasta(v), 3.89
        -- Spaghetti with Marinara Sauce, and a slice of sourdough bread
        DESSERT MENU, Dessert of course!
        ----------
        Apple Pie(v), 1.59
        -- Apple pie with a flakey crust, topped with vanilla icecream
        Cheesecake(v), 1.99
        -- Creamy New York cheesecake, with a chocolate graham crust
        Sorbet(v), 1.89
        -- A scoop of raspberry and a scoop of lime
        CAFE MENU, Dinner
        ----------
        Veggie Burger and Air Fries(v), 3.99
        -- Veggie burger on a whole wheat bun, lettuce, tomato, and fries
        Soup of the day, 3.69
        -- A cup of the soup of the day, with a side salad
        Burrito(v), 4.29
        -- A large burrito, with whole pinto beans, salsa, guacamole
        """
    func testMenuPrint() {
        let allMenus = self.getAllMenus()
        let waitress: Waitress = NewWaitress(allMenus: allMenus)
        XCTAssertEqual(waitress.printMenu(), self.output)
    }

    private func getAllMenus() -> MenuComponent {
        let pancakeHouseMenu = self.getPancakeHouseMenu()
        let dinerMenu = self.getDinnerMenu()
        let cafeMenu = self.getCafeMenu()
        let dessertMenu = self.getDessertMenu()

        let allMenus: MenuComponent = Menu(name: "ALL MENUS", description: "All menus combined")
        allMenus.add(component: pancakeHouseMenu)
        allMenus.add(component: dinerMenu)
        allMenus.add(component: cafeMenu)

        dinerMenu.add(component: dessertMenu)

        return allMenus
    }

    private func getDinnerMenu() -> MenuComponent {
        let dinerMenu: MenuComponent = Menu(name: "DINER MENU", description: "Lunch")
        dinerMenu.add(component: MenuItem(name: "Vegetarian BLT",
                                          description: "(Fakin´) Bacon with lettuce & tomato on whole wheat",
                                          isVegetarian: true,
                                          price: 2.99))
        dinerMenu.add(component: MenuItem(name: "BLT",
                                          description: "Bacon with lettuce & tomato on whole wheat",
                                          isVegetarian: false,
                                          price: 2.99))
        dinerMenu.add(component: MenuItem(name: "Soup of the day",
                                          description: "Soup of the day, with a side of potato salad",
                                          isVegetarian: true,
                                          price: 3.29))
        dinerMenu.add(component: MenuItem(name: "Hotdog",
                                          description: "A hot dog, with saurkraut, relish, onions, topped with cheese",
                                          isVegetarian: false,
                                          price: 3.05))
        dinerMenu.add(component: MenuItem(name: "Pasta",
                                          description: "Spaghetti with Marinara Sauce, and a slice of sourdough bread",
                                          isVegetarian: true,
                                          price: 3.89))
        return dinerMenu
    }

    func getPancakeHouseMenu() -> MenuComponent {
        let pancakeHouseMenu: MenuComponent = Menu(name: "PANCAKE HOUSE MENU", description: "Breakfast")

        pancakeHouseMenu.add(component: MenuItem(name: "K&B's Pancake Breakfast",
                                                 description: "Pancakes with scrambled eggs, and toast",
                                                 isVegetarian: true,
                                                 price: 2.99))
        pancakeHouseMenu.add(component: MenuItem(name: "Regular Pancake Breakfast",
                                                 description: "Pancake with fried eggs, sausage",
                                                 isVegetarian: false,
                                                 price: 2.99))
        pancakeHouseMenu.add(component: MenuItem(name: "Blueberry Pancakes",
                                                 description: "Pancakes made with fresh blueberries",
                                                 isVegetarian: true,
                                                 price: 3.49))
        pancakeHouseMenu.add(component: MenuItem(name: "Wafles",
                                                 description: "Wafles, with your choise of blueberries or strawberries",
                                                 isVegetarian: true,
                                                 price: 3.59))

        return pancakeHouseMenu
    }

    private func getCafeMenu() -> MenuComponent {
        let cafeMenu: MenuComponent = Menu(name: "CAFE MENU", description: "Dinner")

        cafeMenu.add(component: MenuItem(name: "Veggie Burger and Air Fries",
                                         description: "Veggie burger on a whole wheat bun, lettuce, tomato, and fries",
                                         isVegetarian: true,
                                         price: 3.99))
        cafeMenu.add(component: MenuItem(name: "Soup of the day",
                                         description: "A cup of the soup of the day, with a side salad",
                                         isVegetarian: false,
                                         price: 3.69))
        cafeMenu.add(component: MenuItem(name: "Burrito",
                                         description: "A large burrito, with whole pinto beans, salsa, guacamole",
                                         isVegetarian: true,
                                         price: 4.29))

        return cafeMenu
    }

    private func getDessertMenu() -> MenuComponent {
        let dessertMenu: MenuComponent = Menu(name: "DESSERT MENU", description: "Dessert of course!")

        dessertMenu.add(component: MenuItem(name: "Apple Pie",
                                            description: "Apple pie with a flakey crust, topped with vanilla icecream",
                                            isVegetarian: true,
                                            price: 1.59))
        dessertMenu.add(component: MenuItem(name: "Cheesecake",
                                            description: "Creamy New York cheesecake, with a chocolate graham crust",
                                            isVegetarian: true,
                                            price: 1.99))
        dessertMenu.add(component: MenuItem(name: "Sorbet",
                                            description: "A scoop of raspberry and a scoop of lime",
                                            isVegetarian: true,
                                            price: 1.89))

        return dessertMenu
    }

    static var allTests = [
        ("testMenuPrint", testMenuPrint),
    ]
}
