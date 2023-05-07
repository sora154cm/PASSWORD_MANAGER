#!/bin/bash

#追記するファイル名（テキストファイル)を指定する
#変数を定義するときにはイコールの前後にスペースがないことに注意
information="information.txt"

echo "パスワードマネージャーへようこそ！"

#条件がtrueであるかぎり処理をループ
while true; do
  # -pオプションで入力前にメッセージを設定
  read -p "サービス名を入力してください：" service_name

  if [[ -z "$service_name" ]]; then
    #service_nameが空である場合
    echo "サービス名が空欄となっております"
  else
    #>> から出ない場合、演算子を使いリダイレクトでファイルにサービス名を追記
    echo "サービス名: $service_name" >> "$information"
    #入力が確認できたら処理を終了する
    break
  fi
done


while true; do
  read -p "ユーザー名を入力してください：" user_name

  if [[ -z "$user_name" ]]; then
    #service_nameが空である場合
    echo "サービス名が空欄となっております"
  else
    #ファイルにユーザー名を追記
    echo "ユーザー名: $user_name" >> "$information"
    #入力が確認できたら処理を終了する
    break
  fi
done

while true; do
  read -p "パスワードを入力してください：" password

  if [[ -z "$password" ]]; then
    #service_nameが空である場合
    echo "サービス名が空欄となっております"
  else
    #パスワードを追記
    echo "パスワード: $password" >> "$information"
    #入力が確認できたら処理を終了する
    break
  fi
done

# 入力が完了したら
#区切り線も入れとく
echo "ーーーーーーーーーーーーーーーーーーーーーー" >> "$information"
echo "Thank you!"