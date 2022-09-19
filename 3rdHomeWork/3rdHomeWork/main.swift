import Foundation

//Задание номер 2

let cola = 50
let kefir = 65
let milk = 40
let bread = 20
let salat = 100

var total = 0.0
var discount = 0.0

var totalString = ""

func addToBag(cost: Int, name: String) {
    total += Double(cost)
    totalString += "\(name) - \(cost) сом\n"
}

func getItemCost(name: String) -> Int{
    if name.lowercased() == "кола" {
        return cola
    }else if name.lowercased() == "кефир" {
        return kefir
    }else if name.lowercased() == "молоко" {
            return milk
    }else if name.lowercased() == "хлеб" {
            return bread
    }else if name.lowercased() == "салат" {
            return salat
    }else{
        print("Такого продукта нет")
        print("введите снова")
        return 0
    }
}

print("Введите название продукта. У нас в наличии: Кола, Кефир, Молоко, Хлеб, Салат")

let product = readLine()!
addToBag(cost: getItemCost(name: product), name: product)
let product2 = readLine()!
addToBag(cost: getItemCost(name: product2), name: product2)
let product3 = readLine()!
addToBag(cost: getItemCost(name: product3), name: product3)
let product4 = readLine()!
addToBag(cost: getItemCost(name: product4), name: product4)
let product5 = readLine()!
addToBag(cost: getItemCost(name: product5), name: product5)

discount = total * 0.05
let additionalString = "\(total). Скидка = \(discount)\nОбщая сумма = \(total - discount)"
print(totalString + additionalString)


//Задание номер 1
