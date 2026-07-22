<a id="randomday-profile-documentation"></a>
# RandomDay profil belgeleri

> **Kanonik İngilizce kaynağı:** [README.md](../../../profiles/README.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Sürüm: `v0.3.16-alpha`

- Aileler: **17**
- Profiller: **289**
- SandboxSettings sözlük girişleri: **46**

[profil seçim kılavuzu](../PROFIL_SE%C3%87IN.md), ardından kesin değerler için oluşturulan bu dizini kullanın.

Bu dosyalar çalışma zamanı Lua kaynağından ve onun dictionary/translation sözleşme. Gönderilenleri gösteriyorlar `sandbox.profile_overrides` varsayılanlar; bir sunucunun yapılandırılmış değerleri farklı olabilir:

- `profiles.generated.json`: makine tarafından okunabilen profiller, ham değerler, sözlük ve çeviriler.
- `FULL_PROFILE_REFERENCE.md`: tam dizin ve yorumlama kuralları.
- `SANDBOX_SETTINGS_KEYS.md`: 46 anahtarlı sözlüğün tamamı.
- `families/*.md`: ayrıntılı 17 günlük aile referansları.

Şununla yeniden oluştur: `python -B tools/generate_profile_docs.py` Kaymayı şununla kontrol edin: `python -B tools/generate_profile_docs.py --check`
