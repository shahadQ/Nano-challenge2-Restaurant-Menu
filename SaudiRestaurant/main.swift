//
//  main.swift
//  SaudiRestaurant
//
//  Created by Shahad on 22/05/1443 AH.
//

import Foundation

class Menu{
    
    
    
    func foodRegion1(){
        print("---------------------------------------------------")
        print("Please Choose your preferred food region in saudi 🥘🇸🇦 ")
        print("---------------------------------------------------")

        print("1- Najd \n2- Alhejaz \n3- Aser \n4- Alshrqeah")
        print("choose the number from the menu")
        let foodRegion = readLine()!
    switch foodRegion {
    case "1":
        najdSwitch()
        
    case "2":
        AlhejazSwitch()
        
    case "3":
        AserSwitch()
        
    case "4":
        alshrqeahSwitch()
        
    default:
        print("Sorry, not in the menu")
        
    }

    }

    
}

var FOOD = Menu()

//var order: String?
var itemPrice: Double=0
var orders = [String]()
var itemPriceTOTAL = [Double]()
var orderTOTAL = [Int]()

print("Hi!, What's your name?")
let name:String = readLine()!
print("Hello! \(name) ,Welcome to the Saudi Restaurant 🥘🇸🇦")

FOOD.foodRegion1()






func najdSwitch()  {
    
    print("--------------------------🍽 Najd menu 🍽--------------------------\n")
    let menu = """
    1- jresh                            10 SR        calories 200
    2- qrsan with vegetables and meat   22 SR        calories 370
    3- mrgoog with meat                 20 SR        calories 100
    4- mtazez                           20 SR        calories 450
    5- kabsah                           30 SR        calories 200
    6- msabeeb                          15 SR        calories 380
    """
    
    print(menu)
    print("choose the number from the menu")
    let najd = readLine()!
    
    
    switch najd{
    case "1":
        orders.append("jresh")
        itemPrice=10
        quantity()
        
    case "2":
        orders.append("qrsan with vegetables and meat")
       itemPrice=22
        quantity()
    case "3":
        orders.append("mrgoog with meat")
       itemPrice=20
        quantity()
    case "4":
        orders.append("mtazez")
        itemPrice=20
        quantity()
    case "5":
        orders.append("kabsah")
        itemPrice=30
        quantity()
    case "6":
        orders.append("msabeeb")
        itemPrice=15
        quantity()
       
    default:
        print("Sorry, not in the menu")
    }
    
}

func AlhejazSwitch()  {
    
    print("-------------------------🍽 Alhejaz menu 🍽-------------------------\n")
    let menu = """
    1- sleeq                            26 SR        calories 200
    2- kabli                            20 SR        calories 200
    3- manto                            11 SR        calories 70
    4- yagmash                          11 SR        calories 70
    5- farmoza                          11 SR        calories 70
    
    """
   
    print(menu)
    print("choose the number from the menu")
    let Alhejaz = readLine()!
    
    
    switch Alhejaz{
    case "1":
        
        orders.append("sleeq")
        itemPrice=26
        quantity()
        
    case "2":
       
        orders.append("kabli")
       itemPrice=20
        quantity()
    case "3":
        
        orders.append("manto")
       itemPrice=11
        quantity()
    case "4":
        
        orders.append("yagmash")
        itemPrice=11
        quantity()
    case "5":
        
        orders.append("farmoza")
        itemPrice=11
        quantity()
       
    default:
        print("Sorry, not in the menu")
    }}

func AserSwitch()  {
    
    print("--------------------------🍽 Aser menu 🍽--------------------------\n")
    let menu = """
    1- areekah                          15 SR        calories 231
    2- haneth                           28 SR        calories 514
    3- aseedah                          15 SR        calories 427
    4- mashgothah                       80 SR        calories 760
    """
    
    print(menu)
    print("choose the number from the menu")
    let Aser = readLine()!
    
    
    switch Aser{
    case "1":
        orders.append("areekah")
        itemPrice=15
        quantity()
        
    case "2":
        orders.append("haneth")
       itemPrice=28
        quantity()
    case "3":
        orders.append("aseedah")
       itemPrice=15
        quantity()
    case "4":
        orders.append("mashgothah")
        itemPrice=80
        quantity()
       
    default:
        print("Sorry, not in the menu")
    }}

func alshrqeahSwitch()  {
    
    print("------------------------🍽 Alshrqeah menu 🍽------------------------\n")
    let menu = """
    1- shrimp kabsa                     35 SR        calories 120
    2- Hassawi rice                     25 SR        calories 638
    3- makbos                           20 SR        calories 265
    4- harees                           20 SR        calories 651
    5- blaleet                          15 SR        calories 400
    """
    
    print(menu)
    print("choose the number from the menu")
    let alshrqeah = readLine()!
    
    
    switch alshrqeah{
    case "1":
        orders.append("shrimp kabsa")
        itemPrice=35
        quantity()
        
    case "2":
        orders.append("Hassawi rice")
       itemPrice=25
        quantity()
    case "3":
        orders.append("makbos")
       itemPrice=20
        quantity()
    case "4":
        orders.append("harees")
        itemPrice=20
        quantity()
    case "5":
        orders.append("blaleet")
        itemPrice=15
        quantity()
       
    default:
        print("Sorry, not in the menu")
    }
}




func anotheorder1(){
print("do you want Another Order (yes/no)")
    let AnotheOrder = readLine()!

if AnotheOrder == "yes"{
    FOOD.foodRegion1()
}else if AnotheOrder == "no"{
    total()
}
}


func quantity() {
    print("Enter quantity you want")
    if let quantity = readLine() {
      if let num = Double(quantity) {
          
          orderTOTAL.append(Int(num))
          itemPriceTOTAL.append(num * itemPrice)
          
          anotheorder1()
      }
    }
   
    }
func total(){
    var totalorder :Double=0
    
    
    
    for i in 0..<itemPriceTOTAL.count {
        
        totalorder = itemPriceTOTAL[i] + totalorder
        
    }
    
    let VAT:Double = totalorder * 0.15
    
    print("\nyour orders is")
    for (e1, e2) in zip(orderTOTAL, orders) {
        print("\(e1) - \(e2)")
    }

    //print("your orders is ",orders)
    print("\nThe Total Amount before VAT",totalorder )
    print("Total VAT Amount",VAT)
        print("The Total Amount with VAT included ",totalorder + VAT)
   print("\n----------------------------------------------------------------")
   print("--------------------Thank you for your order--------------------")
   print("----------------------------------------------------------------\n")
}





