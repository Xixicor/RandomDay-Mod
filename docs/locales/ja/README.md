# RandomDay 日本語ガイド

**v0.3.16-alpha**

RandomDay は次回の Abiotic Factor 起動用に完全な `SandboxSettings.ini` を
準備します。現在のセッションが読み込み済みのルールは変更せず、使用中の
プロファイルと準備済みプロファイルを分けて管理します。

## インストールと確認

[インストールガイド](../../../INSTALL.md)に従ってください。正しい場所は
`ue4ss/Mods/RandomDay` で、`mods.txt` には `RandomDay : 1` が必要です。
通常、最初の起動で準備し、その後の起動で準備済みプロファイルを有効にします。

`runtime/current/randomday_status.json`、`runtime/rotation_state.txt`、
`web_export/today.json` を確認します。3 つのファイルで使用中と準備済みの
識別情報が一致している必要があります。

## 体験を選ぶ

モード、ファミリー、開始日、進行方式は
`RandomDay/Scripts/ax_config/server.lua` で設定します。[開始手順](../../START_HERE.md)、
[プロファイル選択](../../CHOOSE_A_PROFILE.md)、[設定](../../CONFIGURATION.md)、
[運用](../../OPERATIONS.md)を参照してください。

`HardcoreMode=False`、`AllowIronMode=False`、`StructuralSupportLimit=0`、
`BridgeSupports=0` はこのリリースの初期値であり、ゲームの固定ルールではありません。
[高度な設定](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)に永続的な変更手順があります。

コマンド、パス、キー、状態値は実ファイルと一致させるため英語のままです。

## アルファ版と維持される設定

これはアルファ版です。文書化された導入、ローテーション、復旧手順はテスト済みですが、互換性と使いやすさは引き続き改善中です。

`RandomDay/Scripts/ax_config/server.lua` の `sandbox.profile_overrides` は、4つの値をすべてのファミリーと日で維持します。サーバーを停止し、一度編集してから再起動してください。その後のローテーションや起動でも同じ値が使われます。`SandboxSettings.ini` だけを変更しても一時的です。

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

以下の任意modは各作者が提供する別ダウンロードです。RandomDayは再配布も機能変更も行わず、有効なアダプターは既存の対応設定だけを調整します。作者とメンテナーの皆様に感謝します。
