<a id="randomday---full-profile-reference"></a>
# RandomDay - Tam profil referansı

> **Kanonik İngilizce kaynağı:** [FULL_PROFILE_REFERENCE.md](../../../profiles/FULL_PROFILE_REFERENCE.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Sürüm: `v0.3.16-alpha`

Oluşturulan bu referans 17 ailedeki 289 profilin tamamını kapsar. Çalışma zamanında kullanılan aynı Lua profil tablolarından ve çeviri sözlüğünden oluşturulmuştur; ham değerler güvenilir kalır.

<a id="read-the-reference"></a>
## Referansı okuyun

- Genel ve alan derecelendirmeleri, 46 SandboxSettings anahtarın tamamı artı karşılaşma baskısından hesaplanır.
- Sade dildeki metin tavsiye niteliğindedir. Her açıklamanın yanında tam değerler korunur.
- Etkin ayarlar mevcut önyüklemeye uygulanır. Hazırlanan ayarlar yalnızca bir sonraki yeniden başlatma sonrasında geçerli olur.
- İsteğe bağlı adaptör seçimleri; çalışma zamanı durumu, kurulu bağdaştırıcının gerçekten eşleşip eşleşmediğini ve doğrulanıp doğrulanmadığını kaydeder.

<a id="families"></a>
## Aileler

- [Aksiyon](AILELER/EYLEM_PROFILI_AILESI.md): Daha fazla atış, daha görünür dövüş, daha az sinsi.
- [Hayatta kalma](AILELER/HAYATTA_KALMA_PROFILI_AILESI.md): Daha az düşman, daha güçlü tehditler, daha yüksek ödüller ve daha az bağışlama.
- [Gizlilik](AILELER/GIZLI_PROFIL_AILESI.md): Tespit edilmekten kaçının. Tesis her zamankinden daha fazla dinliyor.
- [Horde](AILELER/HORDE_PROFIL_AILESI.md): Miktar sorunu. Tesis çok fazla düşman sipariş etti.
- [Boss Avı](AILELER/PATRON_AVI_PROFIL_AILESI.md): Kupa düzeyinde ödüller ve kupa düzeyinde hatalarla nadir görülen ciddi karşılaşmalar.
- [Çöpçü](AILELER/%C3%87%C3%96P%C3%87%C3%9C_PROFIL_AILESI.md): Yağma yolları karlıdır, kalabalıktır ve ahlaki açıdan denetimsizdir.
- [Oluşturucu](AILELER/OLU%C5%9ETURUCU_PROFIL_AILESI.md): Ara sıra yapısal itirazlarla birlikte üs genişletme ve lojistik.
- [Keşif](AILELER/KE%C5%9EIF_PROFILI_AILESI.md): Seyahat odaklı koşu. Rotalar önemlidir; oyalanmak önerilmez.
- [Güvenlik Kilidi](AILELER/G%C3%9CVENLIK_KILITLEME_PROFILI_AILESI.md): Düzen, robotlar, devriyeler, tespit ve çok fazla prosedür.
- [Biohazard](AILELER/BIYOLOJIK_TEHLIKE_PROFILI_AILE.md): Zararlılar, kirlenme, su sorunları ve yasal olarak belirsiz hijyen.
- [Anteverse](AILELER/ANTEVER_PROFIL_AILESI.md): Portal baskısı, değişkenler ve boyutsal yan etkiler.
- [Kabus](AILELER/KABUS_PROFIL_AILESI.md): Karanlık, dehşet, nadir görülen şiddetli tehditler ve sessizlik hatalar.
- [Aşınmaya dayanıklı](AILELER/YIPRANMI%C5%9E_PROFIL_AILESI.md): Çevresel hayatta kalma: hava durumu, radyasyon, güç, açlık, susuzluk.
- [Hassas](AILELER/HASSAS_PROFIL_AILESI.md): Daha az düşman, daha keskin nişan alma, açığa çıkma durumunda daha yüksek ceza.
- [Lojistik](AILELER/LOJISTIK_PROFIL_AILESI.md): Taşıma, envanter, dayanıklılık, ağırlık, erzak çalışmaları, hazırlık ekonomisi.
- [Deneysel](AILELER/DENEYSEL_PROFIL_AILESI.md): Tuhaf kombinasyonlar, dengesiz tablolar, tuhaf dirençler.
- [Uyumluluk Testi](AILELER/UYUMLULUK_TESTI_PROFIL_AILESI.md): Tesisin en kötü fikirlerine yönelik 17 günlük bir final sınavı.

<a id="profile-index"></a>
## Profil dizini

| Aile | Gün | Profil | Koşullar |
|---|---:|---|---|
| Aksiyon | 1 | Canlı Ateş Yönelimi | Standart baskı (1.85/5) |
| Aksiyon | 2 | Açık Saha Çatışması | Uygun koşullar (1.29/5) |
| Aksiyon | 3 | Haşere Kontrol Tatbikatı | Standart baskı (2.14/5) |
| Aksiyon | 4 | Supply Run Firefight | Uygun koşullar (1.47/5) |
| Aksiyon | 5 | Güvenlik İrtibat Kişisi | Standart baskı (2.03/5) |
| Aksiyon | 6 | Aşınmaya Dayanıklı Engagement | Standart baskı (2.02/5) |
| Aksiyon | 7 | Gece Baskını | Standart baskı (2.03/5) |
| Aksiyon | 8 | Route Runner | Standart baskı (1.81/5) |
| Aksiyon | 9 | Ration Riot | Standart baskı (2.17/5) |
| Aksiyon | 10 | Escort Kurtarma | Uygun koşullar (1.05/5) |
| Aksiyon | 11 | Eğitim Hedefleri | Uygun koşullar (1.46/5) |
| Aksiyon | 12 | Black Lab Assault | Standart baskı (2.49/5) |
| Aksiyon | 13 | Genişletilmiş Fireline | Standart baskı (2.22/5) |
| Aksiyon | 14 | Tedarik Dolabı Mucizesi | Uygun koşullar (1.02/5) |
| Aksiyon | 15 | Canlı Doğruluk Denetimi | Standart baskı (1.97/5) |
| Aksiyon | 16 | Deneysel Crossfire | Standart baskı (2.09/5) |
| Aksiyon | 17 | Uyumluluk Savaş Oyunu | Zorlu koşullar (2.72/5) |
| Hayatta kalma | 1 | Sessiz Giriş | Standart baskı (2.02/5) |
| Hayatta kalma | 2 | Barikat Protokolü | Uygun koşullar (1.41/5) |
| Hayatta kalma | 3 | Kirlenmiş Sessizlik | Standart baskı (2.35/5) |
| Hayatta kalma | 4 | Çöpçü'nün Borcu | Uygun koşullar (1.61/5) |
| Hayatta kalma | 5 | Güvenlik Kilidi | Standart baskı (2.26/5) |
| Hayatta kalma | 6 | Barınak Tavsiyesi | Standart baskı (2.2/5) |
| Hayatta kalma | 7 | Işıklar Kapalı | Standart baskı (2.25/5) |
| Hayatta kalma | 8 | Oyalanma | Standart baskı (1.97/5) |
| Hayatta kalma | 9 | Boş Kiler Denemesi | Standart baskı (2.4/5) |
| Hayatta kalma | 10 | Sessiz Kurtarma | Uygun koşullar (1.14/5) |
| Hayatta kalma | 11 | Ölçülen Risk | Uygun koşullar (1.62/5) |
| Hayatta kalma | 12 | Yırtıcı İncelemesi | Zorlu koşullar (2.76/5) |
| Hayatta kalma | 13 | Uzun Vardiya Hayatta Kalma | Standart baskı (2.57/5) |
| Hayatta kalma | 14 | Yanlış Sakinlik | Uygun koşullar (1.29/5) |
| Hayatta kalma | 15 | İlk Önce Ölü Görüldü | Standart baskı (2.28/5) |
| Hayatta kalma | 16 | Onaylanmamış Koşullar | Standart baskı (2.33/5) |
| Hayatta kalma | 17 | Son Kaçınma Testi | Zorlu koşullar (3.01/5) |
| Gizlilik | 1 | Fısıldayan Yönlendirme | Standart baskı (2.03/5) |
| Gizlilik | 2 | Yetkili Sessizlik | Uygun koşullar (1.43/5) |
| Gizlilik | 3 | Salon Sizi Duydu | Standart baskı (2.34/5) |
| Gizlilik | 4 | Cepte Bulunan Kanıt | Uygun koşullar (1.63/5) |
| Gizlilik | 5 | Sessiz Güvenlik Taraması | Standart baskı (2.21/5) |
| Gizlilik | 6 | Tahmin: Düşük Profil | Standart baskı (2.2/5) |
| Gizlilik | 7 | Karanlık Rota Açıklığı | Standart baskı (2.22/5) |
| Gizlilik | 8 | Görünmeyen Geçiş | Standart baskı (1.99/5) |
| Gizlilik | 9 | Tanık Olmayan Rasyon | Standart baskı (2.38/5) |
| Gizlilik | 10 | Sessiz Onarım Penceresi | Uygun koşullar (1.19/5) |
| Gizlilik | 11 | Gözlem Tatbikatı | Uygun koşullar (1.61/5) |
| Gizlilik | 12 | Siyah Laboratuar Kör Noktası | Zorlu koşullar (2.62/5) |
| Gizlilik | 13 | Uzun Sessiz Geçiş | Standart baskı (2.55/5) |
| Gizlilik | 14 | Yanlış Boş Salon | Uygun koşullar (1.34/5) |
| Gizlilik | 15 | Algılama Denetimi | Standart baskı (2.26/5) |
| Gizlilik | 16 | Deneysel Sessizlik | Standart baskı (2.21/5) |
| Gizlilik | 17 | Nihai Kaybolma | Zorlu koşullar (2.83/5) |
| Horde | 1 | Kafa Sayısı Hatası | Standart baskı (1.82/5) |
| Horde | 2 | Açık Kat Taşması | Uygun koşullar (1.32/5) |
| Horde | 3 | Zararlılara Fazla Rezervasyon | Standart baskı (2.13/5) |
| Horde | 4 | Tedarik Hattı İzdihamı | Uygun koşullar (1.46/5) |
| Horde | 5 | Kalabalık Kontrolü Yanlış Dosyalandı | Standart baskı (2.02/5) |
| Horde | 6 | Bedenlerin Hava Durumu | Standart baskı (1.99/5) |
| Horde | 7 | Gece Vardiyası Katılımı | Standart baskı (2.02/5) |
| Horde | 8 | Rota Sıkışıklığı | Standart baskı (1.8/5) |
| Horde | 9 | Ration Queue Riot | Standart baskı (2.14/5) |
| Horde | 10 | Kısaca Daha Az Kalabalık | Uygun koşullar (1.08/5) |
| Horde | 11 | Nüfus Artışına Eğitim | Uygun koşullar (1.47/5) |
| Horde | 12 | Black Lab Kalabalık İncelemesi | Standart baskı (2.42/5) |
| Horde | 13 | Genişletilmiş Hat Oluşumu | Standart baskı (2.23/5) |
| Horde | 14 | Tedarik Dolabı Kuyruğu | Uygun koşullar (1.07/5) |
| Horde | 15 | Hacim Bazında Doğruluk | Standart baskı (1.98/5) |
| Horde | 16 | Deneysel Kalabalık Yoğunluğu | Standart baskı (2.1/5) |
| Horde | 17 | Nihai Seyirci Sorunu | Standart baskı (2.58/5) |
| Boss Avı | 1 | Kupa Yönü | Standart baskı (1.98/5) |
| Boss Avı | 2 | Yem Yapımı | Uygun koşullar (1.45/5) |
| Boss Avı | 3 | Küçük Oyun Uyarısı | Standart baskı (2.28/5) |
| Boss Avı | 4 | Ödül Yolu | Uygun koşullar (1.62/5) |
| Boss Avı | 5 | Yetkili Apex Sorunu | Standart baskı (2.16/5) |
| Boss Avı | 6 | Yıpranmış Taş Ocağı | Standart baskı (2.13/5) |
| Boss Avı | 7 | Gece Kupa Hareketi | Standart baskı (2.16/5) |
| Boss Avı | 8 | Hızlı Hedef Rotası | Standart baskı (1.93/5) |
| Boss Avı | 9 | Aç Kupa Vakası | Standart baskı (2.29/5) |
| Boss Avı | 10 | Taxidermy Break | Uygun koşullar (1.2/5) |
| Boss Avı | 11 | Pratik Avı | Uygun koşullar (1.61/5) |
| Boss Avı | 12 | Kara Laboratuvar Örneği | Zorlu koşullar (2.62/5) |
| Boss Avı | 13 | Uzun Av Vardiyası | Standart baskı (2.39/5) |
| Boss Avı | 14 | Sessiz Yem Günü | Uygun koşullar (1.19/5) |
| Boss Avı | 15 | Hassas Kupa Denetimi | Standart baskı (2.12/5) |
| Boss Avı | 16 | Deneysel Apex | Standart baskı (2.24/5) |
| Boss Avı | 17 | Final Kupa Panosu | Zorlu koşullar (2.79/5) |
| Çöpçü | 1 | Gevşek Envanter Etiği | Standart baskı (1.79/5) |
| Çöpçü | 2 | Açık Kat Edinimi | Uygun koşullar (1.28/5) |
| Çöpçü | 3 | Şüpheli Atıştırmalıklar | Standart baskı (2.08/5) |
| Çöpçü | 4 | Tedarik Koşusu Temettü | Uygun koşullar (1.47/5) |
| Çöpçü | 5 | Güvenlik Makbuzu Kontrolü | Standart baskı (1.98/5) |
| Çöpçü | 6 | Yıpranmış Güzergah Satışı | Standart baskı (1.95/5) |
| Çöpçü | 7 | Gece Piyasası İzni | Standart baskı (1.98/5) |
| Çöpçü | 8 | Güzergah Temizleme Ücreti | Standart baskı (1.75/5) |
| Çöpçü | 9 | Rasyon Arbitrajı | Standart baskı (2.07/5) |
| Çöpçü | 10 | Sessiz Kâr Penceresi | Uygun koşullar (1.04/5) |
| Çöpçü | 11 | Eğitim Kurtarma | Uygun koşullar (1.47/5) |
| Çöpçü | 12 | Kara Laboratuvar Tasfiyesi | Standart baskı (2.43/5) |
| Çöpçü | 13 | Uzun Vadeli Envanter | Standart baskı (2.14/5) |
| Çöpçü | 14 | Tedarik Dolabı İkramiyesi | Uygun koşullar (1.02/5) |
| Çöpçü | 15 | Doğruluk Vergisi | Standart baskı (1.92/5) |
| Çöpçü | 16 | Deneysel İşaretleme | Standart baskı (2.12/5) |
| Çöpçü | 17 | Ceplerin Son Denetimi | Zorlu koşullar (2.68/5) |
| Oluşturucu | 1 | İmar Yönelimi | Standart baskı (1.71/5) |
| Oluşturucu | 2 | Açık Kat Yetkilendirmesi | Uygun koşullar (1.22/5) |
| Oluşturucu | 3 | Temel Nemi Sorunu | Standart baskı (1.95/5) |
| Oluşturucu | 4 | Malzeme İhtiyacı | Uygun koşullar (1.39/5) |
| Oluşturucu | 5 | İzin Denetimi | Standart baskı (1.87/5) |
| Oluşturucu | 6 | Hava Durumu Gecikme Bildirimi | Standart baskı (1.84/5) |
| Oluşturucu | 7 | Gece İnşaat Değişikliği | Standart baskı (1.86/5) |
| Oluşturucu | 8 | Donanım Yolu | Uygun koşullar (1.66/5) |
| Oluşturucu | 9 | Rasyonlu Beton | Standart baskı (1.93/5) |
| Oluşturucu | 10 | Kurtarma Oluşturma Penceresi | Uygun koşullar (0.99/5) |
| Oluşturucu | 11 | Güvenlik Rayı Seminer | Uygun koşullar (1.39/5) |
| Oluşturucu | 12 | Siyah Laboratuar Bina Kodu | Standart baskı (2.29/5) |
| Oluşturucu | 13 | Genişletilmiş Vardiya Çerçevesi | Standart baskı (1.99/5) |
| Oluşturucu | 14 | Tedarik Dolabı Onaylandı | Uygun koşullar (0.95/5) |
| Oluşturucu | 15 | Ölçümlerin Doğruluğu | Standart baskı (1.82/5) |
| Oluşturucu | 16 | Deneysel Kat Planı | Standart baskı (2.0/5) |
| Oluşturucu | 17 | Nihai Doluluk İncelemesi | Standart baskı (2.52/5) |
| Keşif | 1 | Kalkış Brifingi | Standart baskı (1.86/5) |
| Keşif | 2 | Paketleme Listesi Hatası | Uygun koşullar (1.29/5) |
| Keşif | 3 | Hidrasyon Kilometresi | Standart baskı (2.19/5) |
| Keşif | 4 | Uzun Rota Temettü | Uygun koşullar (1.47/5) |
| Keşif | 5 | Kontrol Noktası İletişimi | Standart baskı (2.06/5) |
| Keşif | 6 | Hava Durumu Tavsiye Rotası | Standart baskı (2.03/5) |
| Keşif | 7 | Gece Yolu Protokolü | Standart baskı (2.05/5) |
| Keşif | 8 | Route Runner Plus | Standart baskı (1.82/5) |
| Keşif | 9 | Mesafeye Göre Oranlar | Standart baskı (2.22/5) |
| Keşif | 10 | Kamp Sıfırlama | Uygun koşullar (1.05/5) |
| Keşif | 11 | Eğitim Sapması | Uygun koşullar (1.47/5) |
| Keşif | 12 | Black Lab Saha Gezisi | Standart baskı (2.52/5) |
| Keşif | 13 | Genişletilmiş Toplu Taşıma Geçişi | Standart baskı (2.29/5) |
| Keşif | 14 | Supply Cache Discovery | Uygun koşullar (1.03/5) |
| Keşif | 15 | Hassas Yol Noktası | Standart baskı (1.99/5) |
| Keşif | 16 | Deneysel Sapma | Standart baskı (2.11/5) |
| Keşif | 17 | Son Keşif Sınavı | Zorlu koşullar (2.78/5) |
| Güvenlik Kilidi | 1 | Rozet Kontrolü Yönlendirmesi | Standart baskı (2.02/5) |
| Güvenlik Kilidi | 2 | Barikat Dosyalama | Uygun koşullar (1.43/5) |
| Güvenlik Kilidi | 3 | Hidrasyon Kontrol Noktası | Standart baskı (2.33/5) |
| Güvenlik Kilidi | 4 | Kaçak Tedarik Rotası | Uygun koşullar (1.63/5) |
| Güvenlik Kilidi | 5 | Tam Güvenlik Taraması | Standart baskı (2.23/5) |
| Güvenlik Kilidi | 6 | Hava Durumu Kilitleme Bildirimi | Standart baskı (2.19/5) |
| Güvenlik Kilidi | 7 | Gece Devriyesi Genişletme | Standart baskı (2.23/5) |
| Güvenlik Kilidi | 8 | Kontrol Noktası Hızlandırma | Standart baskı (1.99/5) |
| Güvenlik Kilidi | 9 | Ration Denetleme | Standart baskı (2.36/5) |
| Güvenlik Kilidi | 10 | Kısa Süreliğine İzlenmedi | Uygun koşullar (1.17/5) |
| Güvenlik Kilidi | 11 | Tanıklarla Eğitim | Uygun koşullar (1.62/5) |
| Güvenlik Kilidi | 12 | Kara Laboratuvar Güvenlik Yanıtı | Zorlu koşullar (2.65/5) |
| Güvenlik Kilidi | 13 | Fazla Mesai Kilitlemesi | Standart baskı (2.45/5) |
| Güvenlik Kilidi | 14 | Tedarik Dolabı Emri | Uygun koşullar (1.16/5) |
| Güvenlik Kilidi | 15 | Doğruluk Denetimi Resmi | Standart baskı (2.16/5) |
| Güvenlik Kilidi | 16 | Deneysel Güvenlik Protokolü | Standart baskı (2.2/5) |
| Güvenlik Kilidi | 17 | Son Kilitleme Sınavı | Zorlu koşullar (2.89/5) |
| Biohazard | 1 | Kabul Edilebilir Kirlilik | Standart baskı (2.03/5) |
| Biohazard | 2 | Açık Zemin Dekontaminasyonu | Uygun koşullar (1.43/5) |
| Biohazard | 3 | Şüpheli İçme Suyu Artı | Standart baskı (2.26/5) |
| Biohazard | 4 | Numune Tedarik Çalışması | Uygun koşullar (1.63/5) |
| Biohazard | 5 | Sınırlama İsteğe Bağlıydı | Standart baskı (2.22/5) |
| Biohazard | 6 | Sağlık Hava Durumu Etkinliği | Standart baskı (2.25/5) |
| Biohazard | 7 | Gece Dezenfeksiyon Arızası | Standart baskı (2.28/5) |
| Biohazard | 8 | Rota Kirliliği Bildirimi | Standart baskı (1.99/5) |
| Biohazard | 9 | Ration Bozulması İşitmesi | Standart baskı (2.29/5) |
| Biohazard | 10 | Temiz Oda Söylentisi | Uygun koşullar (1.19/5) |
| Biohazard | 11 | Eldivenlerle Eğitim | Uygun koşullar (1.63/5) |
| Biohazard | 12 | Black Lab Biyo İncelemesi | Zorlu koşullar (2.61/5) |
| Biohazard | 13 | Uzatılmış Karantina Vardiyası | Standart baskı (2.43/5) |
| Biohazard | 14 | Tedarik Dolabı Steril-vari | Uygun koşullar (1.16/5) |
| Biohazard | 15 | Hapşırma Doğruluğu | Standart baskı (2.15/5) |
| Biohazard | 16 | Deneysel Maruz Kalma | Standart baskı (2.19/5) |
| Biohazard | 17 | Son Muhafaza Sınavı | Zorlu koşullar (2.88/5) |
| Anteverse | 1 | Boyutsal Giriş | Standart baskı (1.88/5) |
| Anteverse | 2 | Açık Zemin Geometrisi | Uygun koşullar (1.3/5) |
| Anteverse | 3 | Açılardan Nemlendirme | Standart baskı (2.18/5) |
| Anteverse | 4 | Başka Bir Yerden Tedarik | Uygun koşullar (1.48/5) |
| Anteverse | 5 | Başka Bir Yerden Güvenlik İhlali | Standart baskı (2.06/5) |
| Anteverse | 6 | Duvarlardaki Hava Durumu | Standart baskı (2.04/5) |
| Anteverse | 7 | Gece Portalı Nezaket | Standart baskı (2.05/5) |
| Anteverse | 8 | Gece Geçidi Yanlışlık | Standart baskı (1.82/5) |
| Anteverse | 9 | Ration Timeline Drift | Standart baskı (2.2/5) |
| Anteverse | 10 | Kararlı Gerçeklik Penceresi | Uygun koşullar (1.07/5) |
| Anteverse | 11 | Değişkenlerle Eğitim | Uygun koşullar (1.48/5) |
| Anteverse | 12 | Black Lab Boyutsal İnceleme | Standart baskı (2.52/5) |
| Anteverse | 13 | Başka Bir Yerde Genişletilmiş Vardiya | Standart baskı (2.29/5) |
| Anteverse | 14 | Tedarik Dolabı Paradoksu | Uygun koşullar (1.05/5) |
| Anteverse | 15 | Açılardan Doğruluk | Standart baskı (2.0/5) |
| Anteverse | 16 | Deneysel Antefaz | Standart baskı (2.11/5) |
| Anteverse | 17 | Nihai Anteverse Uyumluluğu | Zorlu koşullar (2.77/5) |
| Kabus | 1 | Yumuşak Işıklı Hata | Standart baskı (2.03/5) |
| Kabus | 2 | Açık Zemin Dread | Uygun koşullar (1.43/5) |
| Kabus | 3 | Karanlıktaki Su | Standart baskı (2.35/5) |
| Kabus | 4 | Tedarik Dolabı Solunumu | Uygun koşullar (1.62/5) |
| Kabus | 5 | Yatağın Altında Güvenlik | Standart baskı (2.27/5) |
| Kabus | 6 | Dişli Hava Durumu | Standart baskı (2.21/5) |
| Kabus | 7 | Işıklar Sonsuza Kadar Kapalı | Standart baskı (2.23/5) |
| Kabus | 8 | Yüksek Sesle Koşmayın | Standart baskı (1.99/5) |
| Kabus | 9 | Şey İçin Erzak | Standart baskı (2.38/5) |
| Kabus | 10 | Kapının Ardında Kurtarma | Uygun koşullar (1.15/5) |
| Kabus | 11 | Karanlıkta Eğitim | Uygun koşullar (1.63/5) |
| Kabus | 12 | Black Lab Kabusu İncelemesi | Zorlu koşullar (2.75/5) |
| Kabus | 13 | Gece Yarısından Sonra Uzun Vardiya | Standart baskı (2.56/5) |
| Kabus | 14 | Sahte Sabah | Uygun koşullar (1.3/5) |
| Kabus | 15 | Gölgelerin Doğruluğu | Standart baskı (2.29/5) |
| Kabus | 16 | Deneysel Korku | Standart baskı (2.33/5) |
| Kabus | 17 | Son Kabus Pratik | Zorlu koşullar (2.99/5) |
| Aşınmaya dayanıklı | 1 | Tahmin Yönü | Standart baskı (1.99/5) |
| Aşınmaya dayanıklı | 2 | Açık Zemin Rüzgar Kesme | Uygun koşullar (1.39/5) |
| Aşınmaya dayanıklı | 3 | Su İçme Önerisi | Standart baskı (2.34/5) |
| Aşınmaya dayanıklı | 4 | Tedarik Rotası Temizleme | Uygun koşullar (1.59/5) |
| Aşınmaya dayanıklı | 5 | Zayıf Görüş Durumunda Güvenlik | Standart baskı (2.2/5) |
| Aşınmaya dayanıklı | 6 | Hava Bakanlığı Özrü | Standart baskı (2.15/5) |
| Aşınmaya dayanıklı | 7 | Gece Fırtınası Gözlemi | Standart baskı (2.19/5) |
| Aşınmaya dayanıklı | 8 | Rota Sel Uyarısı | Standart baskı (1.93/5) |
| Aşınmaya dayanıklı | 9 | Rasyon Nemi Denemesi | Standart baskı (2.4/5) |
| Aşınmaya dayanıklı | 10 | Barınak Penceresi | Uygun koşullar (1.14/5) |
| Aşınmaya dayanıklı | 11 | Güvenlik Şemsiyesi Eğitimi | Uygun koşullar (1.59/5) |
| Aşınmaya dayanıklı | 12 | Black Lab İklim İncelemesi | Zorlu koşullar (2.74/5) |
| Aşınmaya dayanıklı | 13 | Genişletilmiş Pozlama Değişimi | Standart baskı (2.5/5) |
| Aşınmaya dayanıklı | 14 | Tedarik Dolabı Kuru Noktası | Uygun koşullar (1.11/5) |
| Aşınmaya dayanıklı | 15 | Yan Rüzgarda Doğruluk | Standart baskı (2.16/5) |
| Aşınmaya dayanıklı | 16 | Deneysel Hava Durumu Hücresi | Standart baskı (2.25/5) |
| Aşınmaya dayanıklı | 17 | Nihai İklim Denetimi | Zorlu koşullar (3.0/5) |
| Hassas | 1 | Görüş Yönü | Standart baskı (2.02/5) |
| Hassas | 2 | Açık Görüş Hattı Planı | Uygun koşullar (1.43/5) |
| Hassas | 3 | Siper Arkasındaki Hidrasyon | Standart baskı (2.32/5) |
| Hassas | 4 | Tedarik Ateş Hattı | Uygun koşullar (1.62/5) |
| Hassas | 5 | Güvenlik Nişancılığı | Standart baskı (2.21/5) |
| Hassas | 6 | Hava Durumu Balistik Notu | Standart baskı (2.19/5) |
| Hassas | 7 | Gece Görüş Denetimi | Standart baskı (2.23/5) |
| Hassas | 8 | Rota Açığa Çıkma İndeksi | Standart baskı (1.99/5) |
| Hassas | 9 | Ateş Altındaki Rasyon | Standart baskı (2.35/5) |
| Hassas | 10 | Siper Arkasındaki Kurtarma | Uygun koşullar (1.18/5) |
| Hassas | 11 | Siperli Eğitim | Uygun koşullar (1.61/5) |
| Hassas | 12 | Kara Laboratuvar Doğruluk İncelemesi | Zorlu koşullar (2.64/5) |
| Hassas | 13 | Genişletilmiş Görüş Hattı Kayması | Standart baskı (2.5/5) |
| Hassas | 14 | Tedarik Dolabı Kör Noktası | Uygun koşullar (1.34/5) |
| Hassas | 15 | Doğruluk Denetimi | Standart baskı (2.25/5) |
| Hassas | 16 | Deneysel Balistik | Standart baskı (2.22/5) |
| Hassas | 17 | Son Hassasiyet Sınavı | Zorlu koşullar (2.85/5) |
| Lojistik | 1 | Envanter Yönlendirme | Standart baskı (1.72/5) |
| Lojistik | 2 | Açık Kat Depolama | Uygun koşullar (1.22/5) |
| Lojistik | 3 | Nemlendirme Evrakları | Standart baskı (2.0/5) |
| Lojistik | 4 | Tedarik Zinciri Kutlaması | Uygun koşullar (1.4/5) |
| Lojistik | 5 | Makbuzların Güvenliği | Standart baskı (1.89/5) |
| Lojistik | 6 | Yıpranmış Navlun | Standart baskı (1.87/5) |
| Lojistik | 7 | Gece Stocktake | Standart baskı (1.9/5) |
| Lojistik | 8 | Rota Optimizasyon Notu | Uygun koşullar (1.68/5) |
| Lojistik | 9 | Ration Ledger | Standart baskı (1.99/5) |
| Lojistik | 10 | Recovery Repack | Uygun koşullar (0.99/5) |
| Lojistik | 11 | Güvenlik Etiketi Eğitimi | Uygun koşullar (1.4/5) |
| Lojistik | 12 | Black Lab Lojistik İncelemesi | Standart baskı (2.32/5) |
| Lojistik | 13 | Genişletilmiş Nakliye Vardiyası | Standart baskı (2.05/5) |
| Lojistik | 14 | Tedarik Dolabı Mucize Denetimi | Uygun koşullar (0.97/5) |
| Lojistik | 15 | Sayımın Doğruluğu | Standart baskı (1.84/5) |
| Lojistik | 16 | Deneysel Envanter | Standart baskı (2.03/5) |
| Lojistik | 17 | Son Lojistik Sınavı | Standart baskı (2.55/5) |
| Deneysel | 1 | Değişken Yönelim | Standart baskı (1.89/5) |
| Deneysel | 2 | Açık Zemin Hipotezi | Uygun koşullar (1.31/5) |
| Deneysel | 3 | Şüpheli Su Kontrolü | Standart baskı (2.21/5) |
| Deneysel | 4 | Tedarik Örneği Önyargısı | Uygun koşullar (1.5/5) |
| Deneysel | 5 | Güvenlik Kontrol Grubu | Standart baskı (2.08/5) |
| Deneysel | 6 | Hava Durumu Anomalisi | Standart baskı (2.07/5) |
| Deneysel | 7 | Gece Değişkeni | Standart baskı (2.09/5) |
| Deneysel | 8 | Rota Deneme Drift | Standart baskı (1.84/5) |
| Deneysel | 9 | Rasyon Deneyi | Standart baskı (2.24/5) |
| Deneysel | 10 | Kurtarma Kontrol Penceresi | Uygun koşullar (1.07/5) |
| Deneysel | 11 | Eğitim Verileri Hatası | Uygun koşullar (1.5/5) |
| Deneysel | 12 | Black Lab Değişken İncelemesi | Standart baskı (2.56/5) |
| Deneysel | 13 | Genişletilmiş Deneme Çalıştırması | Standart baskı (2.35/5) |
| Deneysel | 14 | Tedarik Dolabı Aykırı Değer | Uygun koşullar (1.05/5) |
| Deneysel | 15 | Doğruluk Değişkeni | Standart baskı (2.02/5) |
| Deneysel | 16 | Onaylanan Deneysel Koşullar | Standart baskı (2.13/5) |
| Deneysel | 17 | Nihai Deneysel Sonuç | Zorlu koşullar (2.8/5) |
| Uyumluluk Testi | 1 | Uyumluluk Girişi | Standart baskı (1.97/5) |
| Uyumluluk Testi | 2 | Yapısal Uyumluluk | Uygun koşullar (1.38/5) |
| Uyumluluk Testi | 3 | Nemlendirme Uyumluluğu | Standart baskı (2.31/5) |
| Uyumluluk Testi | 4 | Tedarik Uyumluluğu | Uygun koşullar (1.58/5) |
| Uyumluluk Testi | 5 | Güvenlik Uyumluluğu | Standart baskı (2.19/5) |
| Uyumluluk Testi | 6 | Hava Şartlarına Uygunluk | Standart baskı (2.14/5) |
| Uyumluluk Testi | 7 | Gece Uyumluluğu | Standart baskı (2.2/5) |
| Uyumluluk Testi | 8 | Rota Uyumluluğu | Standart baskı (1.93/5) |
| Uyumluluk Testi | 9 | Rasyon Uyumluluğu | Standart baskı (2.35/5) |
| Uyumluluk Testi | 10 | Kurtarma Uyumluluğu | Uygun koşullar (1.13/5) |
| Uyumluluk Testi | 11 | Eğitim Uyumluluğu | Uygun koşullar (1.58/5) |
| Uyumluluk Testi | 12 | Siyah Laboratuvar Uyumluluğu | Zorlu koşullar (2.67/5) |
| Uyumluluk Testi | 13 | Fazla Mesai Uyumluluğu | Standart baskı (2.51/5) |
| Uyumluluk Testi | 14 | Tedarik Mucizesi Uyumluluğu | Uygun koşullar (1.22/5) |
| Uyumluluk Testi | 15 | Doğruluk Uyumluluğu | Standart baskı (2.17/5) |
| Uyumluluk Testi | 16 | Deneysel Uyumluluk | Standart baskı (2.22/5) |
| Uyumluluk Testi | 17 | Nihai Uyumluluk Testi | Zorlu koşullar (2.9/5) |
