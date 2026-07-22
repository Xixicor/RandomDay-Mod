<a id="choose-the-kind-of-game-you-want"></a>
# İstediğiniz oyun türünü seçin

> **Kanonik İngilizce kaynağı:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay 289 hazır dünya kuralı seti içerir. Her ailede 17 **aile** halinde düzenlenirler:**profil** olmak üzere 17

- aile, hayatta kalma, inşa etme, gizlilik veya keşif gibi geniş bir oyun stilidir;
- profil, o oyun stili içindeki eksiksiz bir kurallar kümesidir; ve
- profil numarasına bir gün denir çünkü RandomDay sunucu yeniden başlatıldığında bu 17 konumdan geçer. Aile modunu, uygun aile listesini, başlangıç ​​günü davranışını ve sıralı veya tekrarlanmayan rastgele gün sırasını ayarlamak için bu gerçek dünyadaki bir takvim günü değildir.

Aşağıdaki tabloyla başlayın. İstediğiniz oturuma en yakın olan satırı seçin, ardından tam etkilerini karşılaştırmak için bir veya iki aile sayfasını açın.

<a id="start-with-a-playstyle"></a>
## Bir oyun tarzıyla başlayın

| İstediğiniz | Şununla başlayın | Bu efektleri karşılaştırın |
|---|---|---|
| Sık doğrudan dövüş veya daha keskin itfaiye | [Aksiyon](PROFILLER/AILELER/EYLEM_PROFILI_AILESI.md), [Horde](PROFILLER/AILELER/HORDE_PROFIL_AILESI.md), [Boss Avı](PROFILLER/AILELER/PATRON_AVI_PROFIL_AILESI.md) veya [Hassas](PROFILLER/AILELER/HASSAS_PROFIL_AILESI.md) | Düşman sayısı, karşılaşma kademesi, isabetlilik, hasar ve iyileşme günleri |
| Algılama, karanlık veya devriye baskısı | [Gizlilik](PROFILLER/AILELER/GIZLI_PROFIL_AILESI.md), [Kabus](PROFILLER/AILELER/KABUS_PROFIL_AILESI.md) veya [Güvenlik Kilidi](PROFILLER/AILELER/G%C3%9CVENLIK_KILITLEME_PROFILI_AILESI.md) | Görünürlük, algılama hızı, gece eğilimi, robotlar ve güvenlik aralıkları |
| Açlık, hava durumu, kirlenme veya yıpranma | [Hayatta kalma](PROFILLER/AILELER/HAYATTA_KALMA_PROFILI_AILESI.md), [Aşınmaya dayanıklı](PROFILLER/AILELER/YIPRANMI%C5%9E_PROFIL_AILESI.md) veya [Biohazard](PROFILLER/AILELER/BIYOLOJIK_TEHLIKE_PROFILI_AILE.md) | Kaynaklar, su, radyasyon, hava durumu, dayanıklılık ve ölüm cezaları |
| Temel büyüme, taşıma, envanter veya tedarik planlaması | [Oluşturucu](PROFILLER/AILELER/OLU%C5%9ETURUCU_PROFIL_AILESI.md) veya [Lojistik](PROFILLER/AILELER/LOJISTIK_PROFIL_AILESI.md) | Yığın boyutu, envanter, ağırlık, dayanıklılık, güç ve yapı baskı |
| Seyahat, portallar, ganimet rotaları veya keşif | [Keşif](PROFILLER/AILELER/KE%C5%9EIF_PROFILI_AILESI.md), [Anteverse](PROFILLER/AILELER/ANTEVER_PROFIL_AILESI.md) veya [Çöpçü](PROFILLER/AILELER/%C3%87%C3%96P%C3%87%C3%9C_PROFIL_AILESI.md) | Hareket, portal baskısı, ödüller, rota riski ve uzakta geçirilen süre temel |
| Öngörülemeyen kombinasyonlar veya geniş kapsamlı bir son zorluk | [Deneysel](PROFILLER/AILELER/DENEYSEL_PROFIL_AILESI.md) veya [Uyumluluk Testi](PROFILLER/AILELER/UYUMLULUK_TESTI_PROFIL_AILESI.md) | Bu kasıtlı olarak karışık ilerlemelerde her gün |

Bu öneriler, kesin değerlerin yerine geçmez, gezinmedir. Her aile sayfası her gün için ana efektleri, alan derecelendirmelerini, karşılaşma bağlamını, 46 sanal alan ayarının tamamını ve isteğe bağlı bağdaştırıcı seçimlerini listeler.

<a id="confirm-the-exact-family-and-day"></a>
## Tam aileyi ve günü onaylayın

1. Aile sayfasını açın ve 17 günlük konumların tamamını karşılaştırın.
2. [tam profil referansını kullanın](PROFILLER/TAM_PROFIL_REFERANSI.md) 289 kombinasyonun tamamında profil adlarını ve yorumlama kurallarını karşılaştırmak için.
3. Geçici olarak [korumalı alan ayar tuşları](PROFILLER/KORUMALI_ALAN_AYARLARI_ANAHTARLARI.md) her bir ham değeri, desteklenen aralığı, puan bandını ve gönderilen profil varsayılanını yorumlamak için.
4. Geçici olarak [`profiles.generated.json`](../../profiles/profiles.generated.json) araç, makine tarafından okunabilir tam profile, sözlüğe ve çeviri kaynağına ihtiyaç duyduğunda.

<a id="configure-the-chosen-experience"></a>
## Seçilenleri yapılandırın deneyim

Kurtarma için [Bir deneyim seçin](YAPILANDIRMA.md#choose-an-experience) aile modunu, uygun aile listesini, başlangıç günü davranışını ve sıralı veya tekrarlanmayan rastgele gün sırasını ayarlayın. RandomDay seçilen sırayı sürdürür; kurtarma, devam eden bir aile çalışmasını sessizce yeniden kaydetmez.
