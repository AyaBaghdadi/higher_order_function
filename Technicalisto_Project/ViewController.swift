//
//  ViewController.swift
//
//  Created by Technicalisto.
//
/*
map
compactMap
flatMap // deprecated
filter
reduce
forEach
contains
removeAll
sorted
split
*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTxt: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
   
        self.setData()
                
        self.array_map()

    }
    
/// --------------------------------------------------------------------------------------------------
/// Struct & Array of Struct
/// --------------------------------------------------------------------------------------------------

    var arrayData:[Profile]! = [Profile]()
    
    struct Profile {
        var first_name : String
        var second_name : String
        var age : Int
        var year : Int
        var position : String
        var title : String
    }

/// --------------------------------------------------------------------------------------------------
/// Set data into Array of Struct
/// --------------------------------------------------------------------------------------------------
    
    func setData(){
        
        let person1 = Profile(first_name: "Aya", second_name: "Mohamed", age: 90, year: 1996, position: "IOS developer", title: "Senior")
        
        let person2 = Profile(first_name: "Mostafa", second_name: "Sayed", age: 30, year: 1985, position: "Backend developer", title: "Leader")
        
        let person3 = Profile(first_name: "Wael", second_name: "Baghdadi", age: 28, year: 1991, position: "Flutter developer", title: "Mid")
        
        let person4 = Profile(first_name: "Nessma", second_name: "Ahmed", age: 22, year: 2000, position: "Dubbing", title: "Junior")
        
        let person5 = Profile(first_name: "Hager", second_name: "Mohamed", age: 40, year: 1980, position: "Graphic designer", title: "Fresh")
        
//        let person6 = Profile(first_name: "Technicalisto", second_name: "Channel", age: nil, year: 2022, position: "Instactor", title: "Senior")

        self.arrayData.append(person1)
        self.arrayData.append(person2)
        self.arrayData.append(person3)
        self.arrayData.append(person4)
        self.arrayData.append(person5)
//        self.arrayData.append(person6)

    }
    
/// --------------------------------------------------------------------------------------------------
/// Print as a hierarchy
/// --------------------------------------------------------------------------------------------------
   
    let spaceLine = " "
    let newLine = "\n"
    
    func print_dump(){
       
        dump(self.arrayData)

        self.myTxt.text = arrayData.reduce("Array\n", {$0 + $1.first_name + spaceLine + $1.second_name + newLine + $1.position + newLine + $1.title + "\n" + newLine })
    }

/// --------------------------------------------------------------------------------------------------
/// Higher Order Function
/// --------------------------------------------------------------------------------------------------
   
/// --------------------------------------------------------------------------------------------------
/// Filter
/// --------------------------------------------------------------------------------------------------
    ///
    func array_filter(){
        
        // Basic array not will change
        // Case sensitive
        
        dump(self.arrayData.filter {$0.first_name.contains("A")})
//        dump(self.arrayData.filter {$0.first_name.contains("a")})
//        dump(self.arrayData.filter {$0.first_name.contains("W")})
//        dump(self.arrayData.filter {$0.first_name.contains("w")})
//        dump(self.arrayData.filter {$0.age > 40})

        // return
        // Closure
        // && , || , ==
        
//        let arrayNew = self.arrayData.filter { return $0.first_name.contains("A")}
//        let arrayNew = self.arrayData.filter { return $0.first_name.contains("a") && $0.age > 30}
//        let arrayNew = self.arrayData.filter { return $0.first_name.contains("A") || $0.year == 1980 }

//        dump(arrayNew)
    }
    
/// --------------------------------------------------------------------------------------------------
/// Reduce
/// --------------------------------------------------------------------------------------------------
    
    func array_reduce(){
        
        let arrayInt = [1 , 10 , 5 , 3 , 20 , 9 , 2]
        
//        let arrayString = ["Tech" , "Arrays" , "Test"]

        // Initial value

        dump(arrayInt.reduce(0, +))
//        dump(arrayInt.reduce(1, *))
        
//        dump(arrayString.reduce("", +))
//        dump(arrayString.reduce("Plus Values : ", +))
        
//        dump(arrayData.reduce(0, {$0 + $1.age}))
//        dump(arrayData.reduce("", {$0 + $1.first_name}))
//        dump(arrayData.reduce("", {$0 + $1.first_name + " " }))
//        dump(arrayData.reduce("First Names : ", {$0 + $1.first_name + " " }))
        
//        dump(arrayData.reduce("Names : ", {$0 + $1.first_name + " " + $1.second_name + " , " }))

    }
    
/// --------------------------------------------------------------------------------------------------
/// Map
/// --------------------------------------------------------------------------------------------------

    func array_map(){
        
        let array_new:[String]! = arrayData.map { return $0.first_name }
  
//        let array_new:[Int]! = arrayData.map { return $0.age }

//        let array_new:[Int]! = arrayData.map { return $0.year + $0.age }

//        let array_new:[String]! = arrayData.map { return $0.first_name + " " + $0.second_name }
        
        dump(array_new)
    }
    
    
/// --------------------------------------------------------------------------------------------------
/// Compact Map
/// --------------------------------------------------------------------------------------------------
  
    func array_compact_map(){
        
        // ignore nill values
        
        let array_new:[Int]! = arrayData.map { return $0.age }
//        let array_new:[Int]! = arrayData.compactMap { return $0.age }
//        let array_new:[Int]! = arrayData.map { return $0.age }
        // flat_map

        dump(array_new)
    }

/// --------------------------------------------------------------------------------------------------
/// Sort
/// --------------------------------------------------------------------------------------------------

    func array_sort(){
        
//        dump(arrayData.sorted { $0.age < $1.age })

        dump(arrayData.sorted { $0.first_name < $1.first_name })
        
        self.print_dump()
    }
    
/// --------------------------------------------------------------------------------------------------
/// Remove
/// --------------------------------------------------------------------------------------------------

    func array_remove(){
        
        self.arrayData.remove(at: 2)

        self.print_dump()
        
//        self.arrayData.removeAll()
//
//        self.print_dump()
        
    }

/// --------------------------------------------------------------------------------------------------
/// forEach
/// --------------------------------------------------------------------------------------------------
    
    func array_forEach(){
        
        self.arrayData.forEach { (item) in
           print( item.age * 2 )
        }
        
        self.print_dump()
        
    }
    
/// --------------------------------------------------------------------------------------------------
/// Split
/// --------------------------------------------------------------------------------------------------
 
    func array_Split(){
        
        let myMessage = "Learn with Technicalisto"
         
        let result = myMessage.split { (char) -> Bool in
            return char == " "
        }
         
        print(result)
        
    }
    
}

