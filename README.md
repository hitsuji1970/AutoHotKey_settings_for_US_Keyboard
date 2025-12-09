# US配列キーボード用AutoHotKey設定

## 目的とする機能

コンパイルしてスタートアップフォルダーに登録することで以下の機能が提供されます。

* 左AltでIMEオフ / 右AltでIMEオン
* Ctrl+HでBackspace

## 使い方

1. AutoHotKeyを公式サイトからインストール
<https://www.autohotkey.com/>
2. AutoHotKey Dashを起動して、Compleを選択（初回インストールあり）
3. Ahk2Exeが立ち上がるので、BrowseでAltImeCtrlHBSのパスを選択
4. Base FileでU64を選択
5. Compress with exeで(none)を選択
6. Convertボタンで実行ファイルを生成（スクリプトと同じフォルダーに出力）
7. 出来上がった実行ファイルを任意のフォルダーに配置
8. ショートカットを作成してスタートアップフォルダーに登録

## 補足

Windows11 for Arm64でも動作可能（エミュレーションモード）

## 参考リンク

ハードウェアキーマッピングに対応していない環境でCapsLockをCtrlにする方法 （Microsoft公式）
<https://learn.microsoft.com/ja-jp/sysinternals/downloads/ctrl2cap>

IME制御関数の元リポジトリ
<https://github.com/k-ayaki/IMEv2.ahk>
<https://github.com/karakaram/alt-ime-ahk> (AHK v1)
