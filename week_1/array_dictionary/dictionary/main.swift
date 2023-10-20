//
//  main.swift
//  dictionary
//
//  Created by Haktan Can Taşkıran on 20.10.2023.
//

import Foundation

var arr = ["Elma", "Karpuz", "Cilek"]

var arr2 = [Int]() // normal bir komutu initialize etmek icin sadece normal parantez

// cok tercih edilmez, ustteki 2 sekil daha cok tercih edilir
var arr3: Array<Float> = [] // initialize etmesi icin tip belirttikten sonra koseli parantez

/*
 arr2.append(3)
 
 print(arr2)

 arr3.append(1.0)
  
 print(arr3)
*/

/*
 append yeni eleman ekler
 removeAll() hepsini siler
 remove(at: ) belirlenen indextekini siler
 removeLast sondaki indexi siler
 removeFirst ilk indexi siler
*/


// ilk satir her zaman key, ikincisi ise tiptir
var dict = ["Haktan": 22, "Emir": 21, "Arda": 23]

var dict2 = [String : Float]()

var dict3: Dictionary<String,Double>

// yeni eleman eklemek icin
dict2["Pi"] = 3.14

// eleman silmek icin
dict2.removeValue(forKey: "Pi") // key kismi dictionary olustururken her zaman ilk yazilan kisimdir, baska bir eleman olsaydi onu da yazip silebilirdik

// veya soyle de silinebilir
dict2["Pi"] = nil // null

// hepsini silmek icin
dict2.removeAll()

// bir dictionarydeki eleman sayisini ogrenmek icin
print(dict2.count)
