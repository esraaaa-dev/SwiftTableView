# SwiftTableView
SwiftTableViewExercise

UITableView Kullanımı:


UITableView, iOS'ta dinamik listeler oluşturmak için kullanılan bir bileşendir. Bu projede, kullanıcıların yapıları listeleyebilmesi için bir UITableView oluşturuldu.


UITableView'in iki temel fonksiyonu vardır:


numberOfRowsInSection: Tabloyu dolduracak öğe sayısını belirler.


cellForRowAt: Her bir satır için gösterilecek hücreyi oluşturur.


UITableView Delegate ve DataSource Protokollerinin Uygulanması:

ViewController, hem UITableViewDelegate hem de UITableViewDataSource protokollerini uygular. Bu protokoller, tablonun nasıl çalışacağını belirleyen metotları içerir.(numberOfRowsInSection , cellForRowAt , didSelectRowAt)
