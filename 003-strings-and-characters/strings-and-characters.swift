// MARK: String literals

/*
    Multiline string literals, üç tırnak işareti (""") ile başlar ve biter. Aynı yazıldığı şekilde yansır.
    Yalnızca kaynak kodda alt satıra geçmek için \ kullanılır.
*/

let someString = "Some string literal value"
let quotation = """
The White Rabbit put on his spectacles.
"Where shall I begin?"
he asked.
"""

// MARK: Special Characters & Extended Delimiters

/*
    \ ile birlikte özel karakterler kullanılabilir.
    Unicode karakterler için de \u{n} şeklinde kullanılabilir. Emojiler buraya dahildir.
*/

let heart = "\u{1F496}"
// # işareti ile extended delimiters kullanılır. Escape karakter etki etmez.
let raw = #"Line 1\nLine 2"#
// .isEmpty() methodu ile stringin boş olup olmadığı kontrol edilebilir.
if raw.isEmpty {
    print("nothing to see here")
}

// MARK: Strings are Value Types

/*
    String bir struct olduğu için value type'dır. Value type'lar kopyalanır ve referans tipleri gibi paylaşılmaz.
    Yani bir string değişkeni başka bir değişkene atandığında, kopyalanır ve iki değişken birbirinden bağımsız olur.
*/

var original = "Hello"
var copy = original
copy += " World"
print(original)
print(copy)

// MARK: String Interpolation

/*
    String içerisine değerlerin eklenmesidir.
    String unicode-correct yapıdadır. Bir characterin birden fazla unicode scaleden oluşması durumudur.
    Ama bu da bir karakterden oluşmuş sayılır.
*/

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
let eAcute = "e\u{301}"
// string.count() O(n) complexity ile çalışır. Çünkü bir karakterin birden fazla unicode scaleden oluşması durumunda, stringin tüm karakterlerini saymak gerekir.
print(eAcute.count)

// MARK: Accessing and Modifying

/*
    Swift'te bir karaktere integer index ile erişemezsin (str[5]).
    Sebep yine grapheme cluster'lar: her Character farklı sayıda byte tuttuğu için "5. karakter" sabit bir bellek offset'ine denk gelmez. Bunun yerine String.Index tipi kullanılır
*/

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
// .hasPrefix() ve .hasSuffix() methodları ile stringin başında veya sonunda belirli bir substring olup olmadığı kontrol edilebilir.
if greeting.hasPrefix("Guten") {
    print("greeting has prefix Guten")
}
if greeting.hasSuffix("Tag!") {
    print("greeting has suffix Tag!")
}