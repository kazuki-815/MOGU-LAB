# もぐラボ LP 引き継ぎドキュメント

> **目的**: 新しいチャットでこのファイルを `@LP-HANDOFF.md` で参照し、「この続きをお願いします」と伝えれば、同じ精度で作業を再開できます。
>
> **最終更新**: 2026-04-10

---

## 1. ファイル構成

```
もぐらぼ/LP/
├── index.html          ← LP本体（HTML + CSS + JS を1ファイルに集約）
├── LP-HANDOFF.md       ← 本ファイル（引き継ぎ用）
├── mogulabo-lp-copy.md ← コピーライティング原稿
└── images/
    ├── case01.png ~ case06.png    ← ビフォーアフター写真（ユーザー提供）
    ├── feature-counseling.jpg      ← 特徴01 画像
    ├── feature-food.jpg            ← 特徴02 画像
    ├── feature-coaching.jpg        ← 特徴03 画像
    ├── future-mirror.jpg           ← 未来シーン：鏡
    ├── future-fashion.jpg          ← 未来シーン：ファッション
    ├── future-meal.jpg             ← 未来シーン：食事
    ├── future-smile.jpg            ← 未来シーン：友人と会話
    ├── type-appetite.jpg           ← 食欲過剰タイプ（タイプカード用）
    ├── type-metabolism.jpg         ← 低代謝タイプ（タイプカード用）
    ├── type-nutrition.jpg          ← 栄養不足タイプ（タイプカード用）
    ├── type-lifestyle.jpg          ← 生活乱れタイプ（タイプカード用）
    ├── edu-type-appetite.jpg       ← 食欲（教育セクション図解用）
    ├── edu-type-metabolism.jpg     ← 代謝（教育セクション図解用）
    ├── edu-type-nutrition.jpg      ← 栄養（教育セクション図解用）
    ├── edu-type-lifestyle.jpg      ← 生活リズム（教育セクション図解用）
    ├── belief-smile.jpg            ← 信念セクション用（現在未使用・削除済み）
    ├── story-team.jpg              ← 想いセクション：チーム写真
    └── story-counseling.jpg        ← 想いセクション：カウンセリング風景
```

---

## 2. LP セクション構成（上から順番）

| # | セクション名 | CSS クラス/背景 | 概要 |
|---|---|---|---|
| ① | ファーストビュー | `.fv` `.fv-hero` | ヘッドライン + VSL動画枠 + CTA① |
| - | お悩み | `.sec--cream` | 6つの吹き出し + SVG女性イラスト |
| - | 3つの特徴 | `.sec--beige` | ビジュアルカード3枚（写真 + 説明） |
| - | CTA② | `.sec--white` | キャンペーン帯 |
| ② | 特典 | `.sec--cream` | プロテイン無料プレゼント（詳細未確定） |
| ③ | 理想の未来 | `.sec--white` | 4シーン写真グリッド + 情景描写 |
| ④ | 共感＋教育 | `.sec--beige` | なぜうまくいかなかったのか + 4タイプ図解 |
| ⑤ | 橋渡し | `.sec--accent` | 「本当に変われるの？」→ 証言へ橋渡し |
| ⑥ | 卒業生の声 | `.sec--cream` | Case 01〜06（写真+数値+コメント）+ CTA③ |
| ⑦ | 4タイプ詳細 | `.sec--white` | タイプ別カード4枚（丸写真アイコン80px）+ CTA④ |
| ⑧ | 信念 | `.sec--beige` | 「私たちが大切にしていること」※丸写真は削除済み（ユーザーが自分で入れる） |
| ⑨ | ターゲット選別 | `.sec--white` | おすすめの人 / おすすめしない人 |
| ⑩ | オファー | `.sec--cream` | 価格比較 + オファーテーブル + CTA⑤ |
| ⑪ | 講師 | `.sec--beige` | 講師①②のカード（写真プレースホルダー、名前未記入） |
| ⑫ | 想い | `.sec--white` | もぐラボが生まれた理由 + 丸型2枚写真 |
| ⑬ | STEP + FAQ | `.sec--cream` | カウンセリングの流れ4ステップ + FAQ5問 |
| ⑭ | 最終CTA | `.sec--beige` | 「この60分で手に入ること」+ 最終CTA⑥ |
| - | フッター | `footer` | ロゴ + リンク + Copyright |

---

## 3. デザイン方針

### 3.1 フォント
- **見出し**: `Noto Serif JP`（明朝体・高級感）
- **英語ラベル**: `Cormorant Garamond`（セリフ・欧文）
- **UI / 補足**: `Noto Sans JP`（ゴシック・可読性重視）
- **ベースサイズ**: `17px`

### 3.2 カラーパレット
```css
:root {
  --cream:       #faf8f5;    /* 背景ベース */
  --beige:       #f2ece3;    /* セクション背景 */
  --beige-mid:   #e8ddd0;    /* ボーダー */
  --beige-dark:  #c4b09a;
  --brown:       #4a3425;    /* 強調テキスト */
  --text:        #221810;    /* 本文（濃いめに調整済み） */
  --text-mid:    #453020;    /* サブテキスト */
  --text-light:  #6a5545;    /* 補足テキスト */
  --gold:        #c9a96e;    /* アクセント（ゴールド系） */
  --gold-light:  #f0e4cc;
  --green:       #4aab6d;    /* CTAボタン */
  --green-dark:  #3c9058;
  --pink-soft:   #f5e6e0;    /* 装飾（フェミニン） */
  --accent:      #7badc4;    /* アクセント（ソフトブルー） ← 新規追加 */
  --accent-dark: #5a92ab;
  --accent-light:#e4f0f6;
  --accent-pale: #f0f7fb;    /* 橋渡しセクション背景 */
}
```

### 3.3 アクセントカラー（ソフトブルー）の適用箇所
- セクション英語ラベル（en-label）
- 特徴カード番号（01, 02, 03）の丸内数字
- お悩み吹き出しのチェックマーク
- FAQ Q番号・開閉アイコン
- Case番号（Case 01 etc.）
- STEPのドット番号
- 区切りルール線（gold→accentグラデーション）
- 未来シーンのラベル帯
- 実績バッジの背景
- 橋渡しセクション全体（`.sec--accent`）
- 「こんな方におすすめ」の上線

### 3.4 アニメーション
- CTAボタン: `pulse-soft`（脈動）
- ヘッドライン em: `shimmer`（グラデーション流れ）
- 特徴カード: `fadeInUp`（順次表示）
- 吹き出し: `fadeInUp`（順次表示）
- 橋渡し円: `float`（浮遊）
- 特典アイコン: `float`（浮遊）
- カード類: ホバー時に `translateY(-3px)` + shadow

### 3.5 レイアウト
- **モバイルファースト**（max-width: 720px）
- 固定ヘッダー + スマホ固定CTA（768px以下）
- セクション間にSVGウェーブ区切り
- 装飾ドットパターン（`.deco-dots`）各所に配置

---

## 4. 確定済み事項（変更しないでください）

1. **ブランド名**: 表示は「もぐラボ」（日本語）
2. **ファーストビューのアイキャッチ**: `MOGU LAB × Consulting Community`（英語表記、ユーザー指定）
3. **サービス形態**: 「コンサルコミュニティ」（1対1のコンサルではない。伴走はするが、コミュニティ形式）
4. **特徴03**: 「コンサルコミュニティで徹底伴走」（旧: 実績ある講師が1対1で伴走）
5. **CTAボタン**: 緑色（`--green: #4aab6d`）
6. **フォント**: 明朝体ベース（`Noto Serif JP`）
7. **対象の人 / そうでない人**: 縦並びレイアウト
8. **信念セクションの丸写真**: 削除済み（ユーザーが自分で挿入する予定）

---

## 5. 前回のフィードバックで残っている課題

### 5.1 画像関連（2026-04-10 更新）

#### 対応済み
| 画像 | 対応内容 | ソース |
|---|---|---|
| 特徴02 画像 | SVGイラスト（右肩上がり習慣化グラフ）に変更 | SVG埋め込み |
| `future-mirror.png` | ジムで体型チェックする女性 → ローカル画像に差替 | `images/future-mirror.png` |
| `future-fashion.png` | 黒ニットワンピのミラーセルフィー → ローカル画像に差替 | `images/future-fashion.png` |
| `future-meal.png` | 日本人女性3人が楽しく食事 → ローカル画像に差替 | `images/future-meal.png` |
| `future-smile.jpg` | 女性同士の会話シーン → Pexels URL | Pexels 6669928 |
| `edu-type-appetite` / `type-appetite` | ジャンクフード（バーガー＆フライ）→ Pexels URL | Pexels 4109272 |
| `edu-type-metabolism` / `type-metabolism` | お腹を気にする女性 → Pexels URL | Pexels 6551127 |
| お悩みイラスト | お腹を気にして悩む女性イラスト → ローカル画像に差替 | `images/worry-illust.png` |

#### 未対応（引き続き要対応）
| 画像 | 備考 |
|---|---|
| `edu-type-nutrition.jpg` / `type-nutrition.jpg` | ローカル参照のまま（ユーザーは現行画像でOKと判断、四角・大サイズに変更済み）。`images/` に実ファイルを配置する必要あり |
| `edu-type-lifestyle.jpg` / `type-lifestyle.jpg` | ローカル参照のまま（変更不要とのこと）。`images/` に実ファイルを配置する必要あり |
| `case01~06.png` | 画質が荒い。ユーザーに高解像度版を依頼する必要あり |
| `future-smile.jpg` | 「きれいになったね」シーンはまだPexels URL。最終的にローカル画像に差し替え推奨 |

> **重要**: フリー素材はできるだけ日本人の画像を使用すること。
> **重要**: 4タイプ図解（教育セクション）とタイプ詳細セクションで同じタイプの画像が統一されていること（対応済み）。

### 5.2 デザイン変更（2026-04-10 実施済み）
- **全体テキスト中央揃え**: `.container` に `text-align: center` を追加。リスト・カード内部は左揃え維持
- **`rule--left` → 中央**: margin を `20px auto` に変更
- **理想の未来テキスト強調**: シーンアイコン（絵文字）追加、キーフレーズにゴールドのアンダーラインハイライト（`.highlight-line`）、プルクォート内のフォントサイズ拡大
- **4タイプ図解リデザイン**: 丸型76pxアイコン → 角丸8px・幅100%・アスペクト比4:3の四角画像。テキストを1行（`<br>` 削除）
- **テキスト色**: 調整済み（`--text: #221810`, `--text-mid: #453020`, `--text-light: #6a5545`）
- **アクセントカラー**: ソフトブルー `#7badc4` 追加済み

### 5.3 まだ入っていないコンテンツ
- **講師セクション**: 講師①②の名前・写真がプレースホルダーのまま
- **最終CTAのリンク**: `href="YOUR_LINE_URL"` が未設定
- **特典（プロテイン）**: 商品名・内容量・受取条件が未確定
- **VSL動画**: 埋め込みコードが未設定

### 5.4 ユーザーが「ワクワク感」を求めている
- 「このLPを見ただけでワクワクして楽しくなるような感じ」を望んでいる
- CSSアニメーション追加済み。理想の未来セクションに視覚強調を追加済み

---

## 6. ユーザーの好み・方針まとめ

- **女性向け**（20〜40代主婦・ワーママがメイン）
- **高級感 + 可愛さ**のバランス（白×ベージュ×ゴールドベースに、ソフトブルーのアクセント）
- **参考LP**: https://pilates.azure-collaboration.co.jp/lineshortlp-meta/（配色・構成参考）
- **テキストだけだと離脱する** → 各ブロックに画像・図解を入れること
- **CTAは頻繁に**配置（現在6箇所 + 固定CTA）
- **明朝体**ベースで高級感
- **CTAは緑色**ボタン

---

## 7. 次のチャットで最初にやること

新しいチャットを開いたら、以下のように伝えてください：

```
@LP-HANDOFF.md を読んで、もぐラボLPの続きをお願いします。
@index.html が現在のLP本体です。
```

上記の残課題（セクション5）を伝えて、修正を進めてもらってください。

---

## 8. 一般公開（デプロイの自動化）

**現状**: `index.html` をローカルで開いているだけでは、インターネット上のURLにはなりません（一般公開不可）。

**用意したもの**（このリポジトリ内）:

| ファイル | 役割 |
|---|---|
| `もぐらぼ/LP/netlify.toml` | Netlify 用（公開ディレクトリ＝LPフォルダ） |
| `もぐらぼ/LP/deploy.ps1` | PCから1コマンドで本番反映（Netlify CLI） |
| `.github/workflows/deploy-mogulabo-lp.yml` | **GitHub に push したら自動で Netlify 本番デプロイ** |

### 初回だけ（人間がやること）

1. **GitHub** にこのプロジェクトをリポジトリとして push（まだなら `git init` → リモート作成 → `push`）。  
2. **Netlify** でアカウント作成 → 空のサイトを1つ作成。  
3. Netlify の **Personal access token** と **Site ID** を取得。  
4. GitHub リポジトリの **Settings → Secrets and variables → Actions** に登録:  
   - `NETLIFY_AUTH_TOKEN`  
   - `NETLIFY_SITE_ID`  

### 以降（自動）

- `もぐらぼ/LP/` 以下を編集して **`main`（または `master`）に push** すると、GitHub Actions が走り **本番URLに自動反映**されます。  
- 手元ですぐ出したいときは、`もぐらぼ/LP` で PowerShell から  
  `.\deploy.ps1`  
  （初回は同フォルダで `npx netlify login` と `npx netlify link` が必要な場合あり）

**注意**: 独自ドメイン・Basic認証・プレビュー用ブランチなどは Netlify / GitHub の画面側で追加設定してください。
