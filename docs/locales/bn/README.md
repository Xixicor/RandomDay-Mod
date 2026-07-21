# বাংলায় RandomDay নির্দেশিকা

**v0.3.16-alpha**

RandomDay পরবর্তী Abiotic Factor চালুর জন্য একটি সম্পূর্ণ
`SandboxSettings.ini` প্রস্তুত করে। এটি চলমান সেশনের নিয়ম বদলায় না; সক্রিয়
প্রোফাইল ও প্রস্তুত পরবর্তী প্রোফাইল আলাদাভাবে দেখানো হয়।

## ইনস্টল ও যাচাই

[ইনস্টল নির্দেশিকা](../../../INSTALL.md) অনুসরণ করুন। সঠিক ফোল্ডার
`ue4ss/Mods/RandomDay` এবং `mods.txt`-এ `RandomDay : 1` থাকতে হবে। সাধারণত প্রথম
চালু প্রোফাইল প্রস্তুত করে, পরের চালু সেটি সক্রিয় করে।

`runtime/current/randomday_status.json`, `runtime/rotation_state.txt` এবং
`web_export/today.json` পরীক্ষা করুন। তিনটিতে সক্রিয় ও প্রস্তুত প্রোফাইলের
পরিচয় মিলতে হবে।

## অভিজ্ঞতা নির্বাচন

`RandomDay/Scripts/ax_config/server.lua`-এ মোড, পরিবার, প্রথম দিন ও অগ্রগতি
নির্ধারণ করুন। [শুরু](../../START_HERE.md), [প্রোফাইল নির্বাচন](../../CHOOSE_A_PROFILE.md),
[কনফিগারেশন](../../CONFIGURATION.md) এবং [সমস্যা সমাধান](../../TROUBLESHOOTING.md)
পড়ুন।

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` এবং
`BridgeSupports=0` সরবরাহকৃত প্রোফাইল নির্মাতার প্রাথমিক মান; এগুলো Abiotic
Factor-এর বাধ্যতামূলক নিয়ম নয়। পরিবর্তন ও পুনরায় তৈরির পদ্ধতি কনফিগারেশন
নথিতে আছে।

বাস্তব ফাইলের সঙ্গে মেলাতে কমান্ড, পাথ, INI কী ও স্ট্যাটাস ইংরেজিতেই থাকে।

## আলফা রিলিজ ও স্থায়ী পছন্দ

এটি একটি আলফা রিলিজ। নথিভুক্ত ইনস্টল, রোটেশন ও পুনরুদ্ধার পথ পরীক্ষা করা হয়েছে; সামঞ্জস্য ও ব্যবহারযোগ্যতা আরও উন্নত হচ্ছে।

`RandomDay/Scripts/ax_config/server.lua`-এর `sandbox.profile_overrides` চারটি মান প্রতিটি পরিবার ও দিনের জন্য ধরে রাখে। সার্ভার বন্ধ করুন, একবার সম্পাদনা করুন, তারপর আবার চালু করুন। পরবর্তী রোটেশন ও স্টার্ট একই মান ব্যবহার করে; শুধু `SandboxSettings.ini` বদলানো সাময়িক।

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

নিচের ঐচ্ছিক মডগুলো তাদের নিজস্ব লেখকের আলাদা ডাউনলোড। RandomDay সেগুলো পুনর্বিতরণ করে না বা তাদের বৈশিষ্ট্য বদলায় না; সক্রিয় অ্যাডাপ্টার শুধু বিদ্যমান সমর্থিত সেটিং বদলায়। লেখক ও রক্ষণাবেক্ষণকারীদের ধন্যবাদ।
