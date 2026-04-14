# もぐラボ LP 引き継ぎドキュメント

> **目的**: 新しいチャットでこのファイルを `@LP-HANDOFF.md` で参照し、「この続きをお願いします」と伝えれば、同じ精度で作業を再開できます。
>
> **最終更新**: 2026-04-14

---

## 1. ファイル構成

```
もぐらぼ/LP/
├── index.html          ← LP本体（HTML + CSS + JS を1ファイルに集約）
├── LP-HANDOFF.md       ← 本ファイル（引き継ぎ用）
├── mogulabo-lp-copy.md ← コピーライティング原稿
└── images/
    ├── mogulab-icon.png        ★新規 お椀＋箸アイコン（FVで使用）
    ├── mogulab-logo.png        ★新規 もぐラボ横長ロゴ（未使用・予備）
    ├── worry-woman.png         ★新規 悩む女性写真（お悩みセクション背景透かし）
    ├── case01.png ~ case06.png ← ビフォーアフター写真（ユーザー提供）
    ├── future-mirror.png       ← 未来シーン：鏡
    ├── future-fashion.png      ← 未来シーン：ファッション
    ├── future-meal.png         ← 未来シーン：食事
    ├── worry-illust.png        ← お悩みイラスト（現在は非表示）
    ├── feature-counseling.jpg  ← 特徴01 画像（実ファイル未配置・ブロークン）
    ├── feature-coaching.jpg    ← 特徴03 画像（実ファイル未配置・ブロークン）
    ├── story-team.jpg          ← 想いセクション（実ファイル未配置・ブロークン）
    └── story-counseling.jpg    ← 想いセクション（実ファイル未配置・ブロークン）
```

---

## 2. LP セクション構成（上から順番）

| # | セクション名 | CSS クラス/背景 | 概要 |
|---|---|---|---|
| ① | ファーストビュー | `.fv` `.fv-hero` | お椀アイコン＋もぐラボ＋タイトル＋VSL＋CTA① |
| - | お悩み | `.sec--dark` | ★ダーク背景＋女性透かし画像＋6つの悩みリスト |
| - | 3つの特徴 | `.sec--beige` | ビジュアルカード3枚（写真01・03はブロークン） |
| - | CTA② | `.sec--white` | 装飾フレームCTA |
| ② | 特典 | `.sec--cream` | プロテイン無料プレゼント（詳細未確定） |
| ③ | 理想の未来 | `.sec--white` | 4シーン写真グリッド＋情景描写 |
| ④ | 共感＋教育 | `.sec--beige` | なぜうまくいかなかったのか＋4タイプ図解 |
| ⑤ | 橋渡し | `.sec--accent` | 「本当に変われるの？」→ 証言へ橋渡し |
| ⑥ | 卒業生の声 | `.sec--cream` | Case 01〜06（写真＋数値＋コメント）＋CTA③ |
| ⑦ | 4タイプ詳細 | `.sec--white` | タイプ別カード4枚＋CTA④ |
| ⑧ | 信念 | `.sec--beige` | 「私たちが大切にしていること」 |
| ⑨ | ターゲット選別 | `.sec--white` | おすすめの人 / おすすめしない人 |
| ⑩ | オファー | `.sec--cream` | 価格比較＋オファーテーブル＋CTA⑤ |
| ⑪ | 講師 | `.sec--beige` | 講師①②のカード（写真・名前はプレースホルダー） |
| ⑫ | 想い | `.sec--white` | もぐラボが生まれた理由＋丸型2枚写真（ブロークン） |
| ⑬ | STEP + FAQ | `.sec--cream` | カウンセリングの流れ4ステップ＋FAQ5問 |
| ⑭ | 最終CTA | `.sec--beige` | 「この60分で手に入ること」＋最終CTA⑥ |
| - | フッター | `footer` | ロゴ＋リンク＋Copyright |

---

## 3. デザイン方針

### 3.1 フォント
- **見出し**: `Noto Serif JP`（明朝体・高級感）
- **英語ラベル**: `Cormorant Garamond`（セリフ・欧文）
- **UI / 補足**: `Noto Sans JP`（ゴシック・可読性重視）
- **ベースサイズ**: `19px`（2026-04-14に17px→19pxへ変更）

### 3.2 カラーパレット
```css
:root {
  --cream:       #faf8f5;
  --beige:       #f2ece3;
  --beige-mid:   #e8ddd0;
  --brown:       #4a3425;
  --text:        #221810;
  --text-mid:    #453020;
  --text-light:  #6a5545;
  --gold:        #c9a96e;
  --gold-light:  #f0e4cc;
  --green:       #3ecf74;   ← 2026-04-14変更（旧#4aab6d より明るく）
  --green-dark:  #2ebf64;
  --accent:      #7badc4;
  --accent-dark: #5a92ab;
  --accent-light:#e4f0f6;
  --accent-pale: #f0f7fb;
}
```

### 3.3 レイアウト
- **モバイルファースト**（max-width: 720px）
- 全体中央揃え（`.container { text-align: center }`）。リスト・カード内は左揃え維持
- 固定ヘッダー＋スマホ固定CTA（768px以下）
- セクション間にSVGウェーブ区切り

---

## 4. ファーストビュー（FV）仕様 ★2026-04-14 全面リデザイン

```
[ お椀アイコン（mogulab-icon.png）120px丸・中央 ]
   MOGU LAB  /  もぐラボ

運動や糖質カットを試しても痩せなかったあなたに
3食たべて無理なく痩せる           ← 小サイズ (fv-lead-small)

タイプ別
痩せ方メソッド                    ← 最大サイズ (fv-main-title / 最大4.2rem)

[ 特別公開 ]                      ← ゴールドバッジ (fv-release-badge)
Type-based Method                 ← スクリプト体・薄め (fv-script)
```

**背景**: ウォームゴールドのグラデーション＋CSSボケ光彩（`radial-gradient` 多重）  
**パディング**: 上下64px/60px

---

## 5. CTAデザイン仕様 ★2026-04-14 全面刷新（全6箇所統一）

### 旧デザイン（削除）
`.cta-glam-wrap` / `.price-impact.cta-glam` — 価格「0円」・ピンクリボン・ピンクドット背景

### 新デザイン（現行）
`.deco-cta-wrap` / `.deco-cta-frame` — ゴールド装飾フレーム

```html
<div class="deco-cta-wrap">
  <!-- 四隅にSVGコーナー装飾（ゴールド） -->
  <div class="deco-cta-frame">
    <p class="deco-cta-sub">動画を受け取ってくださった方限定のご案内</p>
    <div class="deco-cta-divider"></div>
    <p class="deco-cta-days">先着<span class="accent-num">15名</span>限定</p>
    <!-- accent-num: オレンジ #e07a20 / 3.4rem -->
    <p class="deco-cta-title">
      あなた専用の<br>
      <span class="underline-em">パーソナルカウンセリング</span>を<br>
      開催します！
    </p>
    <!-- underline-em: ゴールドアンダーライン / ブラウン色 -->
    <a href="YOUR_LINE_URL" class="btn btn--primary btn--cta-pulse">
      まずは話を聞いてみる　→
    </a>
    <!-- パルス＋バウンスアニメーション / 色: #3ecf74 -->
  </div>
</div>
```

---

## 6. お悩みセクション仕様 ★2026-04-14 リデザイン

**背景**: `.sec--dark`（深みのある暗茶〜黒グラデーション）  
**右側**: `worry-woman.png` を opacity 18%・グラデーションマスクで透かし配置  
**文言**（6項目）:
1. 食べる量を減らしても、なかなか痩せない。
2. 口が寂しくて、つい甘いものを食べてしまう。
3. 疲れたときに味が濃いものが欲しくなる。
4. 痩せると決めたのに、1週間も持たない。
5. 昔よりも痩せにくくなった。
6. 体が重く、寝ても疲れが取れない。

**スタイル**: ゴールド左ボーダー＋半透明背景ボックス（`.worry-item-dark`）

---

## 7. 情報待ち・未確定事項

| 項目 | 状況 |
|------|------|
| **LINE URL** | `YOUR_LINE_URL` のまま（全CTAに適用） |
| **VSL動画** | プレースホルダーのまま（後で差し替え） |
| **講師名・写真** | 「講師①②のお名前を入れてください」のまま |
| **プロテイン特典** | 商品名・内容量・受取条件が未確定 |
| **特徴カード画像** | `feature-counseling.jpg` / `feature-coaching.jpg` 実ファイル未配置 |
| **想いセクション写真** | `story-team.jpg` / `story-counseling.jpg` 実ファイル未配置 |

---

## 8. ローカルプレビュー方法

PowerShell HttpListenerで起動中（port 8081）。  
新しいチャットで再起動が必要な場合は以下を実行：

```powershell
# PowerShellで実行（バックグラウンド）
$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add('http://localhost:8081/')
$listener.Start()
Write-Host "Serving at http://localhost:8081/"
while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  $req = $ctx.Request; $res = $ctx.Response
  $localPath = $req.Url.LocalPath
  if ($localPath -eq '/') { $localPath = '/index.html' }
  $filePath = "c:\Users\kazuk\.cursor\tesuto\もぐらぼ\LP" + $localPath.Replace('/', '\')
  if (Test-Path $filePath) {
    $bytes = [System.IO.File]::ReadAllBytes($filePath)
    $ext = [System.IO.Path]::GetExtension($filePath)
    $mime = switch ($ext) {
      '.html' { 'text/html; charset=utf-8' }; '.css' { 'text/css' }
      '.js' { 'application/javascript' }; '.png' { 'image/png' }
      '.jpg' { 'image/jpeg' }; '.svg' { 'image/svg+xml' }
      default { 'application/octet-stream' }
    }
    $res.ContentType = $mime; $res.ContentLength64 = $bytes.Length
    $res.OutputStream.Write($bytes, 0, $bytes.Length)
  } else { $res.StatusCode = 404 }
  $res.Close()
}
```

---

## 9. デプロイ情報

- Git リポジトリ: `kazuki-815/MOGU-LAB`（main ブランチ）
- Netlify 自動デプロイ: `.github/workflows/deploy-mogulabo-lp.yml`
- Netlify設定ファイル: `もぐらぼ/LP/netlify.toml`
- 手動デプロイ: `もぐらぼ/LP/deploy.ps1`
- 推奨: Netlify の **Base directory = `もぐらぼ/LP`** でルートをLPに統一

---

## 10. 次のチャットで最初にやること

```
@もぐらぼ/LP/LP-HANDOFF.md と @もぐらぼ/LP/index.html を読んで、LPの続きを詰めてください。
```

**優先タスク候補**:
1. LINE URLが決まったら `YOUR_LINE_URL` を全箇所置換
2. VSL動画URLが決まったら埋め込みコード差し替え
3. 講師名・写真が揃ったら講師セクション更新
4. プロテイン特典の詳細が決まったら特典セクション更新
5. 特徴カード・想いセクションの画像が揃ったら差し替え
