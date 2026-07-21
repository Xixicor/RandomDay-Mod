# RandomDay हिन्दी मार्गदर्शिका

**v0.3.16-alpha**

RandomDay अगली Abiotic Factor शुरुआत के लिए पूरा `SandboxSettings.ini` तैयार
करता है। यह चल रहे session में पहले से loaded rules को नहीं बदलता। Active और
prepared profile अलग रहते हैं।

## स्थापना और जाँच

[Installation guide](../../../INSTALL.md) का पालन करें। सही folder
`ue4ss/Mods/RandomDay` है और `mods.txt` में `RandomDay : 1` होना चाहिए। पहली
start सामान्यतः profile तैयार करती है; बाद की start उसे active करती है।

`runtime/current/randomday_status.json`, `runtime/rotation_state.txt` और
`web_export/today.json` जाँचें। तीनों में active और prepared identity एक जैसी
होनी चाहिए।

## अनुभव चुनना

Mode, family, starting day और progression को
`RandomDay/Scripts/ax_config/server.lua` में सेट करें। [Start](../../START_HERE.md),
[Profile choice](../../CHOOSE_A_PROFILE.md), [Configuration](../../CONFIGURATION.md)
और [Operations](../../OPERATIONS.md) देखें।

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` और
`BridgeSupports=0` इस release के defaults हैं, स्थायी game rules नहीं।
[Advanced configuration](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)
उन्हें स्थायी रूप से बदलने की विधि बताती है।

Commands, paths, keys और states वास्तविक files से मेल रखने के लिए English में हैं।

## अल्फ़ा रिलीज़ और स्थायी विकल्प

यह एक अल्फ़ा रिलीज़ है। लिखित इंस्टॉल, रोटेशन और रिकवरी रास्तों का परीक्षण हुआ है; संगतता और उपयोग में आसानी पर काम जारी है।

`RandomDay/Scripts/ax_config/server.lua` में `sandbox.profile_overrides` चारों मान हर परिवार और दिन के लिए रखता है। सर्वर बंद करें, एक बार बदलें और फिर शुरू करें। आगे के रोटेशन और स्टार्ट वही मान इस्तेमाल करते हैं; केवल `SandboxSettings.ini` बदलना अस्थायी है।

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

नीचे दिए वैकल्पिक मॉड उनके लेखकों के अलग डाउनलोड हैं। RandomDay उन्हें दोबारा बाँटता या उनकी सुविधाएँ नहीं बदलता; चालू अडैप्टर केवल मौजूदा समर्थित सेटिंग बदलता है। उनके लेखकों और रखरखावकर्ताओं को धन्यवाद।
