# Flutter `Scaffold` Widget'ında `body` Özelliği: Güzel Ahlak Uygulaması

Bu proje, Flutter'da `Scaffold` widget'ının `body` özelliğinin nasıl kullanıldığını gösteren basit ve eğitici bir mobil uygulamadır. Örnek uygulamada **güzel ahlak, iyilik ve sorumluluk** teması işlenirken `Center`, `SingleChildScrollView`, `Column`, `Container`, `Text`, `Icon` ve `FilledButton` gibi temel Flutter widget'ları birlikte kullanılır.

> **Eğitim notu:** Bu örnek, özellikle Flutter öğrenmeye yeni başlayan öğrencilerin `Scaffold.body` alanına içerik yerleştirmeyi ve widget'ları iç içe kullanmayı öğrenmeleri için hazırlanmıştır.

## 📚 İlgili Makale

Flutter'da `body` özelliğinin anlatımı ve örnek kod için:

[Flutter'da Body Özelliği – Pardus Flutter](https://pardusflutter.blogspot.com/2026/10/flutterda-body-ozelligi.html)

## 🎯 Projenin Amacı

- `Scaffold` widget'ının `body` özelliğini tanımak.
- Bir ekranın içeriğini `Center` ile ortalamak.
- İçeriği `SingleChildScrollView` ile kaydırılabilir hâle getirmek.
- `Column` ile widget'ları dikey olarak sıralamak.
- `Container` ve `BoxDecoration` kullanarak metin alanını biçimlendirmek.
- `FilledButton` ve `SnackBar` ile basit kullanıcı etkileşimi oluşturmak.
- İyilik, doğru sözlülük, emaneti koruma ve yardımlaşma gibi değerler üzerine düşünmek.

## 🖼️ Uygulama Özellikleri

- **AppBar:** Ekranın üst kısmında “Güzel Ahlak” başlığını gösterir.
- **İkon:** `Icons.volunteer_activism` ile iyilik ve yardımlaşmayı simgeler.
- **Başlık:** “İyilik ve Sorumluluk” metnini vurgular.
- **Bilgi alanı:** Güzel ahlakla ilgili kısa bir mesajı yeşil tonlarında bir kutuda sunar.
- **Günün İyiliği butonu:** Tıklandığında kullanıcıya `SnackBar` aracılığıyla bir mesaj gösterir.
- **Kaydırılabilir içerik:** Küçük ekranlarda içeriğin erişilebilir olmasına yardımcı olur.

## 🧰 Kullanılan Teknolojiler

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- Material tasarım bileşenleri

## 🚀 Kurulum ve Çalıştırma

### Gereksinimler

Bilgisayarınızda Flutter SDK ve uyumlu bir geliştirme ortamı (ör. Android Studio veya Visual Studio Code) kurulu olmalıdır.

### Adımlar

1. Bu depoyu bilgisayarınıza klonlayın veya projeyi indirin.
2. Terminalde Flutter projesinin bulunduğu klasöre geçin.
3. Bağımlılıkları yükleyin.
4. Uygulamayı çalıştırın.

```bash
git clone https://github.com/nuritiras/
cd proje-klasoru
flutter pub get
flutter run
```

> **Not:** `https://github.com/nuritiras/` GitHub profil adresidir; tek başına belirli bir depo adresi olmayabilir. `git clone` komutunda, projeyi yayımladığınız deponun tam URL'sini kullanın. `proje-klasoru` ifadesini de kendi proje klasörünüzün adıyla değiştirin. Bu örnekte harici paket kullanılmadığından `pubspec.yaml` dosyasında yalnızca Flutter bağımlılığı yeterlidir.

## 💻 Örnek Kod

Aşağıdaki kodu Flutter projesindeki `lib/main.dart` dosyasına ekleyebilirsiniz.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AhlakSayfasi(),
    ),
  );
}

class AhlakSayfasi extends StatelessWidget {
  const AhlakSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Güzel Ahlak'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.volunteer_activism,
                size: 72,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              const Text(
                'İyilik ve Sorumluluk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'Doğru sözlü olmak, emaneti korumak '
                  've ihtiyaç sahiplerine yardım etmek '
                  'güzel ahlakın önemli örnekleridir.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Güzel bir davranış seç ve uygula!',
                      ),
                    ),
                  );
                },
                child: const Text('Günün İyiliği'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## 🔍 Kodun Önemli Bölümleri

### `Scaffold` ve `body`

`Scaffold`, Material tasarımına uygun temel sayfa yapısını sağlar. `appBar` üst çubuğu tanımlarken `body`, ekranın ana içeriğini barındırır.

### `Center`

İçindeki widget'ı kullanılabilir alanın ortasına yerleştirir. Bu örnekte kaydırılabilir içerik ekranın ortasında konumlanır.

### `SingleChildScrollView`

İçerik ekranın yüksekliğini aşarsa dikey kaydırmaya imkân tanır. `padding` özelliği, içeriğin ekran kenarlarına yapışmasını önler.

### `Column`

Alt widget'ları dikey olarak sıralar. `mainAxisSize: MainAxisSize.min`, sütunun ana eksendeki boyutunu çocuklarının ihtiyaç duyduğu alanla sınırlandırır.

### `Container` ve `BoxDecoration`

Bilgi metnine iç boşluk, açık yeşil arka plan ve yuvarlatılmış köşeler kazandırır.

### `FilledButton` ve `SnackBar`

Butona basıldığında `ScaffoldMessenger` üzerinden kısa süreli bir bilgilendirme mesajı gösterilir. Bu örnekte buton, kalıcı veri kaydetmez veya yeni bir sayfa açmaz.

## 🧪 Öğrenci Etkinlikleri

1. AppBar başlığını farklı bir değerle değiştirin.
2. İkonun boyutunu ve rengini değiştirin.
3. Bilgi kutusunun arka plan rengini ve köşe yuvarlaklığını değiştirin.
4. Metni doğruluk, sabır, temizlik veya yardımlaşma gibi başka bir değerle ilgili olacak şekilde düzenleyin.
5. Butona basıldığında gösterilen `SnackBar` mesajını değiştirin.
6. `SingleChildScrollView` widget'ını kaldırıp uzun içeriklerde oluşabilecek davranışı gözlemleyin.

## 🌱 Değerler Eğitimi Bağlantısı

Uygulama, öğrencilerin günlük hayatta uygulayabilecekleri güzel davranışlar üzerine düşünmelerini destekler. Öğrencilerden gün içinde gerçekleştirebilecekleri bir iyilik seçmeleri ve bu davranışın çevrelerine nasıl katkı sağlayacağını açıklamaları istenebilir.

## 📁 Önerilen Proje Yapısı

```text
ahlak_uygulamasi/
├── lib/
│   └── main.dart
├── pubspec.yaml
└── README.md
```

## 👨‍🏫 Eğitim Amaçlı Kullanım

Bu örnek; bilişim teknolojileri, mobil uygulama geliştirme ve Flutter derslerinde konu anlatımı, sınıf içi uygulama veya laboratuvar çalışması olarak kullanılabilir.

## 🔗 Bağlantılar

- Makale: [Flutter'da Body Özelliği](https://pardusflutter.blogspot.com/2026/10/flutterda-body-ozelligi.html)
- Flutter belgeleri: [docs.flutter.dev](https://docs.flutter.dev/)
- Dart belgeleri: [dart.dev](https://dart.dev/)
- GitHub profili: [nuritiras](https://github.com/nuritiras/)

## 📄 Lisans

Bu projeyi GitHub'da yayımlarken kullanım ve yeniden dağıtım koşullarını belirten bir lisans eklemeniz önerilir. Örneğin MIT Lisansı tercih edilecekse depoya uygun bir `LICENSE` dosyası ekleyin.

<img width="798" height="1600" alt="image" src="https://github.com/user-attachments/assets/6126bbed-c3b5-45cb-bc51-ad5a1ee58053" />

