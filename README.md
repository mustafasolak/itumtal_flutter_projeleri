**Flutter Ders Notları**

 **- Widget kavramı**

Uygulama arayüzünde yer alan her şey bir widgettir. Örneğin metin kutusu, resim, metin vb.

 **- Hot Reload**

Bu teknoloji sayesinde uygulama kodlarında yaptığımız değişiklikler anlık olarak uygulamaya yansır.

 **- Material design**

Materyal, ekiplerin Android, iOS, Flutter ve web için yüksek kaliteli dijital deneyimler oluşturmasına yardımcı olmak için Google tarafından oluşturulan bir tasarım sistemidir. [Kaynak](https://material.io/design/introduction)

 **- main() fonksiyonu**

Uygulamalar çalışabilmek için bir başlangıç noktasına ihtiyaç duyar. Bu başlangıç noktası main() fonksiyonudur. Uygulama main() fonksiyonuyla başlar ve yaşam döngüsüne devam eder.

 **- runApp() fonksiyonu**

Kendisine parametre olarak verilen widgeti ekrana çizer.

Widgetlar iç içe yazılır. Bir widgetin içine parametre olarak başka bir widget eklenebilir. Bazı widgetlar çocuksuzdur, bazıları bir(1), bazıları da iki(2) çocukludur. Eğer bir widgetin child adında bir parametresi var ise tek çocukludur.(Ör: Center widget) Eğer widgetin children adında bir parametresi var ise birden fazla çocukludur. (Ör: Row widget) Eğer child veya children parametreleri yok ise çocuksuz bir widgettir.(Ör: Text widget)

