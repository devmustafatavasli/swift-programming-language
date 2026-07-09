// MARK: Interview Practice

/*
    isPalindrome: Bir stringin palindrome olup olmadığını kontrol eden bir fonksiyon yaz.
    Gereksinimler:
    - Büyük/küçük harf ve boşlukları göz ardı et — "Race car" → true olmalı. (İpucu: .lowercased() ve boşluk filtreleme.)
    - Karşılaştırmayı yaparken düşün: integer index yok. İstersen reversed() kullanabilirsin ama en az bir yerde bilinçli olarak String.Index API'sinden (startIndex/endIndex/index(...)) faydalanmayı dene — amaç o API'yi ellerine yerleştirmek.
    - Test et: "Race car" → true, "hello" → false, "A man a plan a canal Panama" → true.
*/

func isPalindrome(_ text: String) -> Bool {
    let filteredText = text.lowercased().filter { !$0.isWhitespace }
    // return filteredText == String(filteredText.reversed())
    guard !filteredText.isEmpty else {
        return true
    }
    var leftIndex = filteredText.startIndex
    var rightIndex = filteredText.index(before: filteredText.endIndex)

    while leftIndex < rightIndex {
        if filteredText[leftIndex] != filteredText[rightIndex] {
            return false
        }
        // Burada ilerleme işlemini yapıyoruz.
        leftIndex = filteredText.index(after: leftIndex)
        rightIndex = filteredText.index(before: rightIndex)
    }

    return true
}

/*
    characterCount: Bir stringin karakter sayısını ve unicode scalar sayısını döndüren bir fonksiyon yaz.
    Gereksinimler:
    - .count ve .unicodeScalars.count kullan.
    - Şu girdiyle test et ve sonucu yorumla: "café" — ama é'yi bilinçli olarak e + combining accent ("e\u{301}") olarak oluştur.
*/

func characterCount(_ text: String) -> (characterCount: Int, unicodeScalarCount: Int) {
    let characterCount = text.count
    let unicodeScalarCount = text.unicodeScalars.count
    return (characterCount, unicodeScalarCount)
}