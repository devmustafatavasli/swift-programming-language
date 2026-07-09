1) String bir value type (struct)'tır — atama/geçirmede kopyalanır, copy-on-write ile optimize edilir. "String reference type mi value type mı?" klasik bir sorudur; cevap value type.

2) String.Index kullanımı, Int subscript olmamasını açıklamalıyız.

3) .count O(n)'dir — grapheme cluster saymak string'i baştan sona yürümeyi gerektirir. Performans sorularında geçer ("bir loop içinde her iterasyonda str.count çağırmak neden kötü?").

4) Extended grapheme cluster & canonical equivalence — bir Character birden çok scalar olabilir; görsel olarak aynı iki string =='dir. Swift'in "Unicode-correct" olmasının ne demek olduğu.

5) Substring orijinal belleği paylaşır → uzun saklamak için String'e çevir. Bellek yönetimi sorusu olarak ara sıra gelir.

6) Multiline literal ve extended delimiter (#"..."#) — özellikle regex bağlamında.

### NOTES

- .count gördüğün karakterleri (grapheme cluster) sayar, .unicodeScalars.count alttaki yapı taşlarını sayar; bir karakter birden çok scalar'dan oluşabildiği için (combining accent, emoji) bu ikisi farklı çıkabilir — ve count'un string'i baştan sona yürümesi gerektiği için O(n)'dir.

- let word = "caf" + "e\u{301}"   // c, a, f, e, + combining accent
- let result = characterCount(word)
- print(result)
- characterCount = 4 → c, a, f, é
- unicodeScalarCount = 5 → c, a, f, e, ́