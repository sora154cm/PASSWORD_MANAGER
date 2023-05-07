#!/bin/bash

#追記するファイル名（テキストファイル)を指定する
information = "information.txt"

echo "パスワードマネージャーへようこそ！"

echo "サービス名を入力してください："
read service_name
#>> 演算子を使いリダイレクトでファイルにサービス名を追記
echo "$service_name" >> "$information"

echo "ユーザー名を入力してください："
read user_name
#ファイルにユーザー名を追記
echo "$user_name" >> "$information"

echo "パスワードを入力してください："
read password
#パスワードを追記
echo "$password" >> "$information"

# 入力が完了したら
echo "Thank you!"