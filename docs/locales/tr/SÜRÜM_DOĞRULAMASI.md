<a id="release-validation"></a>
# Yayın doğrulama

> **Kanonik İngilizce kaynağı:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Bu sayfa katkıda bulunanlar ve sürüm sorumluları içindir. Modu yükleyen oyuncuların bu komutları çalıştırmalarına gerek yoktur.

<a id="ordinary-user-proof"></a>
## Sıradan kullanıcı kanıtı

Yeni bir okuyucunun iki paketten birini seçip kurabilmesi, etkin profili ve hazırlanan profili tanımlayabilmesi ve bağlantılı kılavuzu izleyerek eksik bir sonuçtan kurtulabilmesi durumunda bir sürüm anlaşılabilir. Bu okuyucu görevleri Git'i gerektirmemelidir, PowerShell, Python veya sağlama toplamı bilgisi.

<a id="contributor-checks"></a>
## Katkıda bulunan kontrolleri

Depo kökünden çalıştır:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Ne zaman `luac` mevcut, gönderilen her Lua dosyasının söz dizimini kontrol edin:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Lua çalışma zamanı testleri şunu gerektirir: `lupa`. Eksik bir Lua tercümanı veya `lupa` kurulumu, başarılı bir sonuç değil, kullanılamayan bir test özelliğidir.

<a id="release-checks"></a>
## Kontrolleri serbest bırakma

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

Sürüm kontrolü şu koşulları doğrular:

- `VERSION` ve `RandomDay/.randomday_version` eşleşiyor.
- Altta yalnızca geçerli sürüm mevcut `releases/`.
- Ayrılmış ve singleplayer/LAN ZIP'ler eksiksiz alternatiflerdir.
- Her iki arşiv de standart olanı içeriyor `RandomDay/Scripts/main.lua` yolu var ve büyük/küçük harf çakışan yükleyici yok.
- Paket modu işaretçileri `dedicated_server` ve `singleplayer_manual`.
- ZIP baytlar belirleyicidir ve eşleşir `CHECKSUMS.sha256`.
- Çalışma zamanı verileri, özel yapılandırma, kimlik bilgileri, önbellekler veya test çıktısı paketlenmez.
- Tüm yerel belge bağlantıları ve 27 yerel ayar giriş sayfası doğrulanır.

<a id="avoid-validation-environment-pitfalls"></a>
## Doğrulama ortamındaki tehlikelerden kaçının

- İki işlemin aynı geçici dosyayı değiştirmemesi için depo yazma kontrollerini seri olarak çalıştırın. bir kez.
- Windows'ta kontrol edin ZIP Küçük harf yükleyicinin mevcut olup olmadığına karar vermek için büyük/küçük harfe duyarlı olmayan dosya araması kullanmak yerine üye adları.
- Onayla `mods.txt` ve `enabled.txt` yalnızca kurulu sunucu testinde; bunlar kaynak testlerinin çalıştırıldığının kanıtı değildir.
- Komut zaman aşımını eksik olarak kaydedin. Komutun sınırlı çıktısı olmadan başarılı veya başarısız olacak şekilde dönüştürmeyin.
- Geçici dosyaları deponun yok sayılanlarında tutun `.tmp/` dizini.

<a id="known-limits"></a>
## Bilinen sınırlar

Yerel doğrulama, kaynağı, paketi, belgeleri ve donanım sözleşmelerini kanıtlar. Belirli bir sunucu panelinin başlangıç ​​sırasını, canlı bir istemcinin mesaj düzenini veya ana bilgisayara özgü dosya sistemi yolunu kanıtlamaz. Test edildiklerinde bunları ayrı entegrasyon sonuçları olarak kaydedin.
