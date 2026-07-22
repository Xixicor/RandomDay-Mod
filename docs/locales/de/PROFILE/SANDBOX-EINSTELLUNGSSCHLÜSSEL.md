<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings Wörterbuch

> **Kanonisch-englische Quelle:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

Dies ist das vollständige Laufzeitwörterbuch für die 46 SandboxSettings Schlüssel, die von jedem RandomDay Profil verwendet werden. Das Wörterbuch wandelt Rohwerte in Domänenwerte und begrenzte player/admin Formulierungen um; Es ersetzt niemals den Rohwert.

| Schlüssel | Spielerbedeutung | Domäne | Typ | Grundlinie | Schwerer, wenn |
|---|---|---|---|---:|---|
| AllowCharacterReset | Zeichenzurücksetzung | Wiederherstellung | boolean | n/a | context |
| AllowIronMode | Eisenmodus | Wiederherstellung | boolean | n/a | context |
| AllowPagers | Pager | Ressourcen | boolean | n/a | context |
| AllowRecipeSharing | Rezeptfreigabe | Ressourcen | boolean | n/a | context |
| AllowTransmog | transmog | Ressourcen | boolean | n/a | context |
| BaseInventorySize | Basisinventargröße | Ressourcen | Anzahl | 12 | niedrig |
| BonusPerkPoints | Bonusvorteilspunkte | Ressourcen | Anzahl | 0 | niedrig |
| BridgeSupports | Bridge-Supportlimit | Umgebung | Anzahl | 0 | hoch |
| ContinenceSpeedMultiplier | Kontinenzrate | Überleben | Multiplikator | 1.0 | hoch |
| DamageToAlliesMultiplier | Friendly-Fire Schaden | Kampf | Multiplikator | 1.0 | hoch |
| DayNightCycleSpeedMultiplier | Tag-Nacht-Zyklusgeschwindigkeit | Umgebung | Multiplikator | 1.0 | hoch |
| DayNightCycleState | Tag-Nacht-Status | Umgebung | enum | n/a | context |
| DeathPenalties | Todesstrafen | Wiederherstellung | enum | n/a | context |
| DetectionSpeedMultiplier | Feinderkennung Geschwindigkeit | Kampf | Multiplikator | 1.0 | hoch |
| DisableResearchMinigame | Forschungsminispiel | Ressourcen | boolean | n/a | context |
| DurabilityLossOnDeathMultiplier | Haltbarkeitsverlust beim Tod | Wiederherstellung | Multiplikator | 1.0 | hoch |
| EnemyAccuracy | Feind Genauigkeit | Kampf | enum | n/a | context |
| EnemyDeployableDamageMultiplier | feindlicher Schaden an der Verteidigung | Kampf | Multiplikator | 1.0 | hoch |
| EnemyHealthMultiplier | feindliche Widerstandsfähigkeit | Kampf | Multiplikator | 1.0 | hoch |
| EnemyPlayerDamageMultiplier | Feindschaden an Spielern | Kampf | Multiplikator | 1.0 | hoch |
| EnemySpawnRate | Feindhäufigkeit | Kampf | Multiplikator | 1.0 | hoch |
| FatigueSpeedMultiplier | Ermüdungsrate | Überleben | Multiplikator | 1.0 | hoch |
| FirstTimeStartingWeapon | Waffenbereitstellung wird gestartet | Ressourcen | Anzahl | 0 | niedrig |
| FoodSpoilSpeedMultiplier | Lebensmittelverderb | Ressourcen | Multiplikator | 1.0 | hoch |
| GameDifficulty | Spielschwierigkeit | Kampf | enum | n/a | context |
| HardcoreMode | Hardcore-Modus | Wiederherstellung | boolean | n/a | context |
| HomeWorlds | Heimatwelten | Umgebung | boolean | n/a | context |
| HostAccessPlayerCorpses | Host-Leichenzugriff | Wiederherstellung | boolean | n/a | context |
| HungerSpeedMultiplier | Hungerrate | Überleben | Multiplikator | 1.0 | hoch |
| InvisibleRadiation | unsichtbare Strahlung | Umgebung | boolean | n/a | context |
| ItemDurabilityMultiplier | Item-Haltbarkeit | Ressourcen | Multiplikator | 1.0 | niedrig |
| ItemStackSizeMultiplier | Stapelkapazität | Ressourcen | Multiplikator | 1.0 | niedrig |
| ItemWeightMultiplier | Itemgewicht | Ressourcen | Multiplikator | 1.0 | hoch |
| LootRespawnEnabled | Loot Respawn | Ressourcen | boolean | n/a | context |
| PlayerFurnitureDestruction | Zerstörung von Spielermöbeln | Kampf | boolean | n/a | context |
| PlayerXPGainMultiplier | Erfahrungsgewinn | Ressourcen | Multiplikator | 1.0 | niedrig |
| PowerSocketsOffAtNight | Nachtenergie | Umgebung | boolean | n/a | context |
| RadiationDealsDamage | Strahlung Schaden | Umgebung | boolean | n/a | context |
| RefrigerationEffectivenessMultiplier | Kühlung | Ressourcen | Multiplikator | 1.0 | niedrig |
| ShowDeathMessages | Todesmeldungen | Wiederherstellung | boolean | n/a | context |
| SinkRefillRate | Sink-Nachfüllrate | Ressourcen | Multiplikator | 1.0 | niedrig |
| StorageByTag | Speicherung nach Tag | Ressourcen | boolean | n/a | context |
| StructuralSupportLimit | Structural Support Limit | Umgebung | Anzahl | 0 | hoch |
| TaintedSinkWater | verunreinigtes Spülbeckenwasser | Überleben | boolean | n/a | context |
| ThirstSpeedMultiplier | Durstrate | Überleben | Multiplikator | 1.0 | hoch |
| WeatherFrequency | Wetterhäufigkeit | Umgebung | enum | n/a | context |

<a id="score-bands"></a>
## Score-Bänder

| Bewertung durch | Bewertung | Einfache Bedeutung |
|---:|---|---|
| 0.8 | Entlastungsbedingungen | Entlastung |
| 1.7 | Günstige Bedingungen | günstig |
| 2.6 | Standarddruck | Standard |
| 3.4 | Anspruchsvolle Bedingungen | anspruchsvoll |
| 4.2 | Schwierige Bedingungen | schwerwiegend |
| 5.0 | Extreme Bedingungen | extrem |
