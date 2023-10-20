//
//  main.swift
//  operators
//
//  Created by Haktan Can Taşkıran on 20.10.2023.
//

import Foundation

// unary: tek degerle kullanilir => degil(!x) operatoru gibi
// binary: 2 degerle kullanilir => toplama(x + y) operatoru gibi
// ternary: 3 degerle kullanilir => kosul(x ? y : z) operatoru gibi

/* MARK: ATAMA OPERATORU (=)
    let x = 10
    var y = 5
    y = x
    print(y)
*/

/* MARK: ARITMETIK OPERATORLER (+, -, *, /, %)
    print (3 + 2)
    print (5 - 1)
    print (9 * 4)
    print (8 / 2)
    print (15 % 5) // kalan degeri gosterir, yani sonuc 3 degil, sifir olarak cikar
    print (7 % 3)
    print("Kodlu" + "yoruz")
*/

/* MARK: BILESIK ATAMA OPERATORLERI (+=, -=, *=, /=)
    var x = 3
    x += 2 // x'e 2 ekle ve esitle, yani x yukarda 3 ve bu islemle biz 2 daha ekleyip toplami 5'e esitliyoruz - x = x + 2 islemi kisaca
    print(x)
*/

/* MARK: KARSILASTIRMA OPERATORLERI (==, !=, >, <, >=, <=)
    print(7 == 7) // 2 tane esittir 'true' anlamini verir, bu durumda true doner
    print(5 != 2) // unlem esittir ise degildir anlamini verir, bu durumda 5, 2'ye esit olmadigi icin islem true doner, == yapsaydik false donerdi
    print(9 > 6) // bunu aciklamaya gerek yok
    print(7 < 3) // bunu da
    print(8 >= 8) // ya buyuk ya esit, bu durumda true doner
    print(5 <= 1) // ya kucuk ya esit, bu durumda false doner
 
    string icin de kullanilabilir
    
    if "x" == "x" {
        print("Esitlik dogru")
    } else {
        print("Esitlik yanlis")
    }
*/

/* MARK: KOSUL OPERATORU (x ? y = z)
 
    if else'in tek satirda daha okunakli ve guzel duran varyanti
    soru isareti true, iki nokta ust uste false ifade eder
 
    "x" == "x" ? print("esitlik dogru") : print("esitlik yanlis")
    
    yani bu kodda eger x, diger x'e esit ise 'esitlik dogru' yaz, degilse 'esitlik yanlis' yaz
    if else hali yukarida mevcut
 
*/
