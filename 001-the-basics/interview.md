1) Optionals çok önemli. Ne olduğu, Swift'in neden getirdiği (null safety, "billion dollar mistake"i compile-time'a taşımak) ve unwrap yöntemlerinin farkları: force unwrap vs if let vs guard let vs ??.

2) if let vs guard let farkını bil. Scope ve kontrol akışı: guard, unwrap'i fonksiyonun geri kalanına taşır ve nil durumunda return/throw/break zorunludur. "Pyramid of doom"dan kaçınmak için guard tercih edilir.

3) Type safety / implicit conversion olmamasını bil. Int + Double neden direkt toplanamaz, açık dönüşüm neden gerekli.

4) let vs var farkının oluşturduğu duurmları bil - immutability'nin sağladığı güvenlik, thread-safety'ye katkısı ve derleyici optimizasyonu.

5) typealias kullanımı sorulabilir.

6) assert vs precondition vs fatalError ayrımını bilsen iyi olur.

### Notes

- Swift optionals ekleme sebebi null hatasının runtime değil compile time taşınmasının amaçlanmasıdır. "Değer yok" durumu da tipin bir parçası olur.

if let vs guard let:
- if let içerisinde unwrap edilen değer sadece if bloğunda yaşar. guard let ise tüm scope kullanılabilir.
- guard let kısmında else içerisinden çıkmak zorunludur.