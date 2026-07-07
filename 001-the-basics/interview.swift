// MARK: Interview Practice

/*
    parseCoordinate: "41.0082, 28.9784" formatındaki bir String alıp, geçerliyse enlem/boylamı bir isimli tuple olarak, geçersizse nil döndüren bir fonksiyon yaz.
    Gereksinimler:
    - Girdi tam olarak virgülle ayrılmış iki parçadan oluşmalı; değilse nil dön.
    - Her iki parça da geçerli Double'a çevrilebilmeli; biri bile çevrilemezse nil dön.
    - Bu kontrolleri guard let ve optional binding ile yap (force unwrap ! kullanma).
    - Bir [String] dizisi verildiğinde (bazı elemanlar bilinçli olarak bozuk olsun) geçerli koordinatları formatlı şekilde yazdır, geçersizleri atla.
    - Geçersiz bir girdi için ?? ile (latitude: 0, longitude: 0) gibi bir default değer kullanan alternatif bir örnek göster.
*/

/*
    String bir girdi alınıyor.
    Döndürülen değer, iki adet değer içeren bir tuple veya nil olabilir.
    guard let ile durumları kontrol edebiliriz.
    - İki defa let kullanmaktansa direkt tuple olarak başta atamak ve döndürmek daha temiz bir çözüm olabilir.
    Verilen girdiyi for ile kontrol edebiliriz, if let daha doğal bir yaklaşım olur.
    Nil coleascing ile default değerler atanır.
*/

import Foundation

func parseCoordinate(_ coordinateString: String) -> (latitude: Double, longitude: Double)? {
    let components = coordinateString.split(separator: ",")
    // Eğer components sayısı 2 değilse, geçersiz bir format olduğu için nil döndür.
    guard components.count == 2 else {
        return nil
    }
    // Her bir component'i Double'a çevirmeye çalış ve eğer başarısız olursa nil döndür.
    guard let latitude = Double(components[0].trimmingCharacters(in: .whitespaces)), let longitude = Double(components[1].trimmingCharacters(in: .whitespaces)) else {
        return nil
    }
    // Eğer her şey başarılıysa, latitude ve longitude değerlerini bir tuple olarak döndür.
    return (latitude: latitude, longitude: longitude) ?? (latitude: 0.0, longitude: 0.0)
}

let inputs = [
    "41.0082, 28.9784",
    "invalid, data",
    "34.0522, -118.2437",
    "90.0000, 180.0000",
    "100.0000, 200.0000",
    "   51.5074 , -0.1278   ",
]

for input in inputs {
    if let coordinate = parseCoordinate(input) {
        print("Parsed coordinate: \(coordinate.latitude), \(coordinate.longitude)")
    } else {
        print("Invalid coordinate format: \(input)")
    }
}

let raw = "not a coordinate"
let coordinate = parseCoordinate(raw) ?? (latitude: 0.0, longitude: 0.0)