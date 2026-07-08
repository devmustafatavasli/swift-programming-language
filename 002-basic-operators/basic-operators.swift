// MARK: Assignment Operator

/*
    Operatörler üçe ayrılı: Unary, Binary ve Ternary.
    Unary operatörler tek bir operand ile çalışır.
    Binary operatörler iki operand ile çalışır.
    Ternary operatörler üç operand ile çalışır.
    Operand, operatörün uygulandığı değerlerdir.
*/

let a = 5
var b = 10
// b 5 oldu.
b = a

// MARK: Arithmetic Operators

/*
    Aritmetik operatörler, sayısal değerler üzerinde matematiksel işlemler yapar.
    +, -, *, /, % gibi operatörler kullanılır.
    String birleştirme için + operatörü kullanılabilir.
*/

"Hello, " + "World!"
// Remainder operatörü floating-point sayılar için kullanılamaz. Özel method çağrılır.
8.0.truncatingRemainder(dividingBy: 2.5)

// MARK: Compound Assignment Operators

/*
    Compound assignment operatörleri, bir değişkenin değerini güncellemek için kullanılır.
    +=, -=, *=, /= gibi operatörler kullanılır.
*/

// Tuple karşılaştırmaları yapılabilir.
(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")

// MARK: Ternary Conditional Operator

/*
    Ternary conditional operatörü, üç operand ile çalışır.
    Koşul ? true durum : false durum şeklinde kullanılır.
    Kısa durumlarda tercih edilebilir, ancak uzun ve karmaşık durumlarda if-else kullanmak daha okunabilir olur.
*/

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// Nil Coalescing olayı bu mantıkla çalışır.
// a ?? b ifadesi aslında a != nil ? a! : b şeklinde çalışır. a nil ise b döndürülür, değilse a döndürülür.

// MARK: Range Operators

/*
    Range operatörleri, belirli bir aralıkta değerleri temsil etmek için kullanılır.
    Closed range operator (a...b) a ve b dahil olmak üzere tüm değerleri kapsar.
    Half-open range operator (a..<b) a dahil, b hariç olmak üzere tüm değerleri kapsar.
    One-sided range operator (a...) a dahil olmak üzere tüm değerleri kapsar.
*/

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// MARK: Logical Operators

/*
    Mantıksal operatörler, boolean değerler üzerinde mantıksal işlemler yapar.
    && (AND), || (OR), ! (NOT) gibi operatörler kullanılır.
    Mantıksal operatörler, koşullu ifadelerde ve kontrol akışında kullanılır.
*/

// Short circuiting mantığı ile çalışır. Eğer && operatöründe ilk operand false ise, ikinci operand kontrol edilmez. || operatöründe ise ilk operand true ise, ikinci operand kontrol edilmez.
if user != nil && user!.isActive {
    print("User is active.")
}