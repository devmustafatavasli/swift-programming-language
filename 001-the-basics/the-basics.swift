// MARK: Constants & Variables

/*
    let ile sabit değerler saklanır.
    var ile değişken değerler saklanır.
    aksi takdirde compile error oluşur.
*/

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
currentLoginAttempt += 1

// MARK: Type Annotation & Type Inference

/*
    Değişkenin tipini belirtmek için type annotation kullanılır.
    Swift, değişkenin tipini otomatik olarak belirlemek için type inference kullanır.
*/

var welcomeMessage: String
welcomeMessage = "Hello"

let pi = 3.14159
// Swift küsuratlı sayılar için Double tipini kullanır, Float kullanmaz.
let anotherPi = 3 + 0.14159

// MARK: Integers & Floating-Point

/*
    Swift, Int ve UInt tiplerini kullanır.
    Int, negatif ve pozitif tam sayıları saklar.
    UInt, sadece pozitif tam sayıları saklar.
*/

let minValue = UInt8.min
let maxValue = UInt8.max

// MARK: Type Safety & Type Inference

/*
    Swift, type safety ve type inference kullanır.
    Bu sayede değişkenlerin tipleri belirlenir ve yanlış tipte değerler atanamaz.
*/

let three = 3
let pointOneFourOneFiveNine = 0.14159
// Dönüşüm yapmadan farklı tipteki değerlerle işlem yapamayız.
let piValue = Double(three) + pointOneFourOneFiveNine

// MARK: Numeric Literals

/*
    Farklı sayı sistemlerine uygun şekilde numeric literals kullanılabilir.
    Çok büyük sayılar için underscore (_) kullanılabilir.
*/

let oneMillion = 1_000_000

// MARK: Type Aliases

/*
    Type alias, mevcut bir tipe yeni bir isim vermek için kullanılır.
    Ekip çalışması sırasında kod okunabilirliğini artırır.
*/

typealias AudioSample = UInt16
let maxAmplitudeFound = AudioSample.max

// MARK: Booleans

/*
    Bool tipinde true veya false değerler saklanır.
*/

let orangesAreOrange = true
if orangesAreOrange {
    print("Oranges are orange.")
}

// MARK: Tuples

/*
    Tuples, birden fazla değeri tek bir değişkende saklamak için kullanılır.
    Her bir değer farklı bir tipte olabilir.
    Fonksiyonun değer döndürmesi gibi geçici ve hafif gruplar oluşturmak için ideal bir yaklaşımdır.
*/

let http404Error = (404, "Not Found")
print(http404Error.0)
print(http404Error.1)

// MARK: Optionals

/*
    Optionals, bir değerin olabileceği gibi olmayabileceği durumları temsil etmek için kullanılır.
    Bir değişkenin değeri olmayabilir, bu durumda nil değeri atanır.
    Sadece optional tipteki değişkenler nil değerini alabilir. Null pointer exception compile-time taşınmış olur.
*/

var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer: String?

/*
    Unwrapping:
    - Forced Unwrapping: Değerin olduğunu garanti ediyorsak, ! operatörü ile unwrapping yapılır. nil ise runtime crash verir.
    - Optional Binding: Optional tipindeki bir değişkenin değerini güvenli bir şekilde almak için kullanılır.
    - Guard Statement: Optional binding ile benzer şekilde çalışır, ancak else bloğu ile birlikte kullanılır. else bloğunda return, break veya continue gibi bir kontrol akışı sağlanmalıdır.
    - Nil Coalescing: Optional tipindeki bir değişkenin değerini almak için kullanılır. Eğer değer nil ise, sağ tarafındaki değeri döndürür.
    - Implicitly Unwrapped Optionals: Başlangıçta nil oalbilir ama sonra hep dolu olacağı varsayılır.
*/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
let forcedUnwrappedNumber = convertedNumber!
if let actualNumber = Int(possibleNumber) {
    print("Value is \(actualNumber)")
} else {
    print("Couldn't be converted to an integer")
}
// if let kısmında aynı isim var eşitliğin sağ tarafının yazılmasına gerek yok.
if let convertedNumber {
    print("Value is \(convertedNumber)")
}
func greet( _ name: String?) {
    guard let name else {
        print("No name provided")
        return
    }
    print("Hello, \(name)")
}
let defaultColorName = nil
let userDefinedColorName = defaultColorName ?? "red"

/*
    UIKit'teki @IBOutlet property'leri tam da bu yüzden implicitly unwrapped optional'dır.
    Outlet, view yüklenene kadar nil'dir ama sonra hep dolu varsayılır.
*/

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

// MARK: Assertions & Preconditions

/*
    assert ve precondition, runtime'da koşulların sağlanıp sağlanmadığını kontrol etmek için kullanılır.
    assert, debug modunda çalışır ve koşul sağlanmazsa programı durdurur.
    precondition, release modunda da çalışır ve koşul sağlanmazsa programı durdurur.
*/

let age = -3
// assert(age >= 0, "A person's age cannot be less than zero")
// precondition(age >= 0, "A person's age cannot be less than zero")
// fatalError("A person's age cannot be less than zero")