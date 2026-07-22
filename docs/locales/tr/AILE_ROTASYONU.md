<a id="seventeen-families-seventeen-days"></a>
# On Yedi Aile, On Yedi Gün

> **Kanonik İngilizce kaynağı:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay, her ailede 17 tam günlük profil içeren 17 oyun tarzı ailesini içerir. Bu, 289 belgelenmiş sonuç üretir family/day kombinasyonlar.

Aile, bir koşunun geniş stilini belirler. 1'den 17'ye kadar olan günler, ailenin baskı, iyileşme, ilerleme hızı ve kaynaklar konusunda ilerlemesini sağlar. Bir çalıştırma, her gün kimliğini tam olarak bir kez içeren bir siparişi saklar. Yeniden başlatma, bir sonraki kayıtlı konuma ilerler; RandomDay aileleri sıranın ortasında değiştirmez.

<a id="selection-modes"></a>
## Seçim Modları

| Mod | Yeni çalıştırma davranışı | Çalıştırma sırasında |
|---|---|---|
| `selected_run` | Aile çalışmasının başlangıcında `profile_family.selected_family`. | Bu aileyi depolanan 17 konumun tamamında tutar. |
| `non_repeating_random_run` | Uygun, kullanılmamış bir aile seçer. | 17 pozisyonun tamamında başarılı olur ve uygun liste bitene kadar aile tekrarlarından kaçınır. |
| `rotation_run` | Yapılandırılan sıraya göre sonraki aileyi alır. | Depolanan 17 konumun tamamında tutar. |

Gönderilen yapılandırma şunu kullanır: `non_repeating_random_run`. Nihai saklanan konumdan sonra hazırlanan aile hâlâ yalnızca hazırdır; yeniden başlatıldıktan sonra aktif hale gelir. `cycle.start_day_mode` ve `cycle.day_progression_mode` aile seçimini değiştirmeden ilk günü ve gün sırasını seçin.

<a id="families"></a>
## Aileler

- Aksiyon
- Hayatta kalma
- Gizlilik
- Horde
- Boss Avı
- Çöpçü
- Oluşturucu
- Keşif
- Güvenlik Kilidi
- Biohazard
- Anteverse
- Kabus
- Aşınmaya dayanıklı
- Hassas
- Lojistik
- Deneysel
- Uyumluluk Testi

[oluşturulmuş profil dizini](PROFILLER/PROFIL_BELGELERI.md) olarak veya 289 kombinasyonun tümünü incelemek için [tam profil referansını kullanın](PROFILLER/TAM_PROFIL_REFERANSI.md) olarak ayarlayın. [korumalı alan anahtarı referansı](PROFILLER/KORUMALI_ALAN_AYARLARI_ANAHTARLARI.md) desteklenen her değeri ve gönderilen profil varsayılanını tanımlar.

<a id="custom-families-and-days"></a>
## Özel Aileler ve Günler

Aile kaynağı şunun altında yaşar:

```text
RandomDay/Scripts/ax_profiles/families/
```

İşaretleme ve JSON altında `docs/profiles/` altındaki Markdown ve JSON, oluşturulan referanslardır. Çıktıyı değil, kaynağı değiştirin, ardından tam profile/schema doğrulamasını çalıştırın. Yalnızca bir gün ayrıştırıldığında özel küme hazır değildir; 17 günün tamamında, yapılandırılmış profil varsayılanları, türler, aralıklar ve oluşturulan referans aynı olmalıdır.
