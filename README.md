# Git Simulator

## サービス概要
Webエンジニアを目指す初心者などのGitを使いこなせない人に
Gitの仕組み・実際の挙動を確認しながらの学習環境を提供する
Git学習アプリケーション"Git Simulator"です。

## メインのターゲットユーザー
- Webエンジニアを目指しているがGitを使いこなせない初心者、学生
- Gitコマンドを打つことで何が起こるのか、仕組みから理解したいエンジニア

## ユーザーが抱える課題
- 仕組みを理解していないため目的にあったコマンドが何か分からない
- コマンドを打つことで何が起こるのかわからずコマンドを打つのを躊躇ってしまう

## 解決方法
Gitのコマンドを実際に入力することで、どのようなファイルの生成・移動が行われているのかを可視化することでGitに対する理解を促し、知識の定着化を図る。

## 実装予定の機能
- エンドユーザー
  - 学習機能(ログイン不要)
    - Gitコマンドを入力することでblobオブジェクト、treeオブジェクト、commitオブジェクトの動きを可視化できる
  - クイズ機能
    - 状況に応じてどのGitコマンドを打つべきか、選択式クイズをプレイできる
- 管理者
  - 管理者ログイン
  - 管理機能
    - 使用できるGitコマンドの追加・削除・編集

## なぜこのサービスを作りたいのか？
Webエンジニアの業務においてはGitを使ったバージョン管理・チーム開発が主流でありGitは必須の技術であるが、初心者にとってGitコマンドを打つことは多少勇気が必要なことがある。

コマンドを打つことでGitの裏側で何が行われ、最終的に何が起こるのかすらよく分からないためだ。
私も知識がなかったためにaddやcommit、pushといった基本的なコマンド以外は極力打ちたくなかった。

これを解決するにはGitの仕組みを知り、コマンドを打つことで何が起こるのか実際に体験し、理屈から理解することが必要だと感じたため、本サービスを企画した。

## スケジュール
- 画面遷移図 4/13〆切
- ER図作成 4/16〆切
- 機能実装 5/19〆切
- β版リリース(RUNTEQ内) 5/19〆切
- 本リリース 5/31〆切