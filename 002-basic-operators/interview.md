1) Short-circuit evaluation (&&, ||) — ne olduğu ve pratik faydası (gereksiz/riskli hesaplamayı atlamak, nil kontrolüyle crash önlemek).

2) Range operatörleri — ... vs ..< farkı, özellikle array iteration'da 0..<count neden doğru tercih. iOS'ta for, prefix, dropFirst, slice işlemlerinde her yerde.

3) ?? nil-coalescing — optionals ile birlikte gelen klasik ikili.

4) Ternary operator — okunabilirlik dengesini bilmek (ne zaman ternary, ne zaman if).

5) % floating-point'te çalışmaz → truncatingRemainder(dividingBy:). Bunu bilmek "dile hakim" izlenimi verir.

6) Assignment (=) değer döndürmez → if x = y yazamazsın, C bug'ının Swift'te neden imkansız olduğu.

7) Range'ler IndexPath, Array slicing, String index işlemlerinde sürekli. ..< kullanmayı içselleştir — off-by-one hatalarının çoğu bundan çıkar.

8) Short-circuit + optional kombinasyonu delegate/data source kodlarında yaygın güvenlik kalıbı.

### NOTES

Short-Circuit Evolution:
- if index < array.count && array[index] == target {} kodunu düşünelim. Burada && ile sol taraf false ise sağ taraf atlanır, değerlendirilmeye alınmaz. Crash önleme avantajı anlamında şunu düşünebiliriz: koruyucu kontrol solda, riskli erişim sağda. Bu da güvenlik boyutunu gösteriyor.

Guard ve Nil Coalescing:
- guard optional'ı ele alan tarafta iken ?? tüketen taraftadır. Karıştırmamalısın.