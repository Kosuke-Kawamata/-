
# なにをしますか？
puts "なにをしますか？"
puts "①レビュー入力 ②レビュー選択 ③アプリの終了"
choice = gets.to_i
if choice == 1
  review = {genre:"",title:"",comment:""}
  puts review.class    
  #入力した文字列を配列にハッシュの中に入れる
  puts "ジャンルを入力してください"
  review[:genre] = gets.chomp
  puts "タイトルを入力してください"
  review[:title] = gets.chomp
  puts "感想を入力してください"
  review[:comment] = gets.chomp
  puts "内容は以下であっていますか？\n\nジャンル:\n#{review[:genre]}\n\nタイトル:\n#{review[:title]}\n\n感想:\n#{review[:comment]}"
  puts "①投稿する  ②やり直す"
  reply = gets.to_i
  if reply == 1
    puts "投稿完了！"
  else reply != 1
    puts "もう一度やり直してください"
  end

elsif choice == 2
  puts "ジャンル:\n#{review[:genre]}\n\nタイトル:\n#{review[:title]}\n\n感想:\n#{review[:comment]}"
elsif choice == 3
  puts"アプリを終了します"
else
  puts "もう一度やり直してください"  
end
