// MARK: Interview Practice

/*
    isLeapyear: Bir yılın artık yıl olup olmadığını kontrol eden bir fonksiyon yaz.
    Gereksinimler:
    - Yıl 4'e bölünüyorsa artık yıldır, ama 100'e bölünüyorsa değildir, istisna olarak 400'e bölünüyorsa yine artık yıldır.
    - Sonucu tek bir boolean ifade olarak döndür — if-else zinciri kullanma. %, ==, !=, &&, || operatörlerini birleştir.
    - Operatör önceliğini doğru kur; gerekiyorsa parantezle netleştir.
    - Test et: 2000 → true, 1900 → false, 2024 → true, 2023 → false.
*/

/*
    Artık Yıl = 4'e bölünme, 100'e bölünememe, 400'e bölünme.
    Bu şartları karşıladığı sürece true, herhangi biri bile yoksa false sistemini kur.
*/

func isLeapYear(_ year: Int) -> Bool {
    return (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
}

/*
    validateCoordinate: Bir enlem ve boylamın geçerli aralıkta olup olmadığını kontrol eden bir fonksiyon yaz. Geçerli aralıklar: latitude -90...90, longitude -180...180.
    Gereksinimler:
    - Kontrolü range operatörü (...) ve logical operator (&&) ile yap. range.contains(...) kullanabilirsin.
    - Bir koordinatın geçerli olup olmadığına göre ternary ile "valid" / "invalid" yazdıran küçük bir kullanım örneği ekle.
    - Fonksiyon Bool? döndürseydi (örneğin eksik veri durumunda nil), çağıran tarafta ?? ile false default'u nasıl verirdin — kısa bir satırla göster.
*/

func validateCoordinate(latitude: Double?, longitude: Double?) -> Bool? {
    guard let latitude = latitude, let longitude = longitude else {
        return nil
    }
    return (-90.0...90.0).contains(latitude) && (-180.0...180.0).contains(longitude)
}

let result = validateCoordinate(latitude: 45.0, longitude: 90.0) ?? false
print(result ? "valid" : "invalid")