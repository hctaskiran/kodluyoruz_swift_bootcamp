var password = "33231"

if password == "33231" {
    print("Sifre dogru")
} else {
    print("Sifre yanlis")
}

// switch ile if else ayni islevi gorur, fakat switch daha temiz gozukur

switch password{
case "123":
    print("sifre cok zayif, yeni bir sifre dene")
case "33231":
    print("Sifre guclu ")
default: print("sifre uyusmuyor")
}

// veya bunu enum olarak da yapabiliriz

enum PasswordOption {
case zayif
case dogru
case uyusmuyor
} // burada ise enum olusturarak caseleri atayabiliriz

var secondPassword: PasswordOption = .zayif

switch secondPassword {
case .zayif:
    print("sifre cok zayif, yeni bir sifre dene")
case .dogru:
    print("sifre guclu")
case .uyusmuyor:
    print("sifre uyusmuyor")
}



