/*
not: for her zaman while dongusunden daha stabildir ve daha kullanislidir

1 den 100 e kadar olan numaralari siralar, 1 ve 100 dahildir

for i in 1...100 {
    print("Numara \(i)")
}
 
 100un dahil olmamasi icin ise
 
 for i in 1..<100 {
     print("Numara \(i)")
 }


while kullanilacaksa, for'un aksine oncesinde bir degisken atanmali

var i = 1
while i < 100 {
    print("Numara \(i)")
}
 
yazdigimiz bu kodda 99 kere 1 rakami printleyecek. eger 1 den 100 e kadar sirayla printlemesini istersek:

while i < 100 {
    print("Numara \(i)")
    i += 1
}
*/

var sayilar = [1,3,5,11,18,7,4]

// indexleri ile birlikte print edilmesi icin 'sayilar.enumarated()'
for sayi in sayilar.enumerated() {
    print(sayi)
}
// daha temiz olmasi icin
for (indexNumber, sayi) in sayilar.enumerated() {
    print("\(indexNumber) - \(sayi)")
}
